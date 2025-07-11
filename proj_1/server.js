// server.js

const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Health check endpoint
app.get('/healthz', (req, res) => {
  res.status(200).send('OK');
});

// Root route
app.get('/', (req, res) => {
  res.send('Hello from Node.js server!');
});

// Start server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

