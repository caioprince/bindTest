<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
</head>

<body>
  <h1 align="center">BindTest 🌐</h1>


  <p align="center">
      <a href="https://tryhackme.com/p/TxVScoobyDoo">
          <img src="https://tryhackme-badges.s3.amazonaws.com/TxVScoobyDoo.png" alt="TryHackMe Profile">
      </a>
  </p>

  <h2>About BindTest</h2>

  <p>🚀 <strong>BindTest</strong> is a Bash script for testing network connections by opening local ports or testing connections to a destination with customizable maximum port settings.</p>

  <h2>Getting Started</h2>

  <h3>Usage</h3>

  <p>To run BindTest, use the following command in the terminal:</p>

  <pre><code>chmod +x bindTest.sh
./bindTest.sh [OPTIONS]</code></pre>

  <h4>Options:</h4>

  <table>
      <thead>
          <tr>
              <th>Option</th>
              <th>Description</th>
          </tr>
      </thead>
      <tbody>
          <tr>
              <td><code>-o, --openPorts</code></td>
              <td>Open local ports.</td>
          </tr>
          <tr>
              <td><code>-mx, --maxPorts MAX</code></td>
              <td>Specify the maximum number of ports.</td>
          </tr>
          <tr>
              <td><code>-c, --connect IP_DESTINATION</code></td>
              <td>Test connection to the specified IP destination.</td>
          </tr>
      </tbody>
  </table>

  <h4>Examples:</h4>

  <pre><code>
# Open 100 local ports
./bindTest.sh -o -mx 100

# Test connection to 192.168.1.1 on all 65535 ports
./bindTest.sh -c 192.168.1.1

# Test connection to 192.168.1.1 on up to 50 ports
./bindTest.sh -c 192.168.1.1 -mx 50
</code></pre>

  <h2>Permissions</h2>

  <p>Before running the script, ensure it has execution permissions. Use the following command in the terminal:</p>

  <pre><code>chmod +x bindTest.sh</code></pre>

 
</body>

</html>
