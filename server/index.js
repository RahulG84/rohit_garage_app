require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');



const app = express();
const PORT = process.env.PORT || 4000;

mongoose.set('strictQuery', false);

const connectDB = async () => {
    try {
        const conn = await mongoose.connect(process.env.MONGO_URI);
        console.log(`MongoDB Connected : ${conn.connection.host}`);

        // app.listen(PORT, () => {
        //     console.log(`Listening on port ${PORT}`);
        // });


    } catch (error) {
        console.log(error);
        process.exit(1);
    }
}


app.get('/display-my-name', (req, res) => {
    res.send({ name: 'Rahul Girgal' });
});



// connectDB();

connectDB.then(() => {
    app.listen(PORT, () => {
        console.log(`Listening on port ${PORT}`);
    });
})