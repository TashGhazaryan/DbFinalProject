const express = require('express');
const bodyParser = require('body-parser');

const app = express();

const adminRoutes = require('./routes/admin');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/admin', adminRoutes);

app.listen(8080);
