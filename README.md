# BE-Ciura
Back-end of Ciura Website. Coded by Masapuan web team.
<br><br>

## Installation
### Requirement
<ul>
  <li>MySql, MariaDB, XAMPP, you mention it.</li>
  <li>Git, please visit <a href="https://git-scm.com/">git</a> for more information.</li>
  <li>Node.js, please visit <a href="https://nodejs.org/en">Node.js</a> for more information.</li>
</ul>

### How to run
<ul>
  <li>Run the mysql database </li>
  <li>Create the database schema using the query I've given <code>see Ciura.sql</code></li> 
  <li>Git clone the repository <code>git clone https://github.com/AndyNotfound/BE-Ciura </code></li>
  <li>Change working directory to the cloned directory (BE-Ciura in this case) <code>cd BE-Ciura</code></li>
  <li>Install depedencies by typing <code>npm i</code></li> 
  <li>Run the server by <code>node index.js</code></li>
</ul>
<br>

## Documentation

### Endpoint: /api/register
#### Request Type: POST
Body:
```json
{
    "username": "testing",
    "email": "testing@gmail.com",
    "password": "testing"
}
```

<br>

#### Response
```json
{
  "Register success!"
}
```

<br>
<br>

### Endpoint: /api/login
#### Request Type: POST
Body:
```json
{
    "username": "testing",
    "password": "testing"
}
```

<br>

#### Response
```json
{
    "token": "someRandomWordYouProbablyCanNotRead",
    "user": {
        "id": 9,
        "username": "testing",
        "email": "testing@gmail.com",
        "profilePicture": null
    }
}
```
