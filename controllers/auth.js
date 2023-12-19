/* eslint-disable max-len */
/* eslint-disable require-jsdoc */
const query = require('../database');
const bcryptjs = require('bcryptjs');
const generateToken = require('../utils/generateToken');

async function register(req, res) {
  const {username, email, password} = req.body;

  // Validate request body not empty data
  if (
    username === undefined ||
    username === '' ||
    email === undefined ||
    email === '' ||
    password === undefined ||
    password === ''
  ) {
    return res.status(400).json('Invalid data!');
  }

  try {
    const isDuplicate = await query(
        `
        SELECT user_id FROM User WHERE username = ? OR email = ? 
    `,
        [username, email],
    );

    if (isDuplicate.length > 0) {
      return res.status(400).json('User already exists!');
    }

    const salt = await bcryptjs.genSalt(12);
    const hash = await bcryptjs.hash(password, salt);

    await query(
        `
        INSERT INTO User (
            username, email, password
        ) VALUES (
            ?, ?, ?
        );
    `,
        [username, email, hash],
    );

    return res.status(200).json('Register success!');
  } catch (error) {
    return res.status(400).json('Something went wrong!');
  }
}

async function login(req, res) {
  const {username, password} = req.body;

  // Validate username and password
  if (!username || !password) {
    return res.status(400).json('Invalid username or password');
  }

  try {
    // Query for user details using username
    const user = await query(
        'SELECT user_id, username, email, profile_picture, password FROM User WHERE username = ?',
        [username],
    );

    if (!user.length) {
      return res.status(400).json('Invalid username or password');
    }

    // Compare submitted password with hashed password
    const isMatch = await bcryptjs.compare(password, user[0].password);

    if (!isMatch) {
      return res.status(400).json('Invalid username or password');
    }

    // Generate and assign session token
    const token = generateToken({user_id: user[0].user_id});

    res.cookie('authToken', token, {httpOnly: true});

    const response = {
      token,
      user: {
        id: user[0].user_id,
        username: user[0].username,
        email: user[0].email,
        profilePicture: user[0].profile_picture,
      },
    };

    // or
    return res.json(response);

    // Redirect to protected page or proceed with logged-in user
  } catch (error) {
    // Handle any errors
    console.error(error);
    return res.status(500).json('Internal server error');
  }
}

module.exports = {
  register,
  login,
};
