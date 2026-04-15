const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.json({ mensaje: 'API funcionando' });
});

app.listen(port, '0.0.0.0', () => {
    console.log(`API en puerto ${port}`);
});
