const express = require("express");
const path = require("path");
const app = express();

// Sajikan file statis (index.html, CSS, dll)
app.use(express.static(path.join(__dirname, "public")));

// Jalankan server di port 3000
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`🚀 Server running on http://localhost:${PORT}`);
});
