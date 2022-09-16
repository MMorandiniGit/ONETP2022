const express = require('express')
const app = express()
const port = 3000

app.set('views', './views') 
app.set('view engine', 'ejs') 

app.use(express.static(__dirname + '/public'));

app.get("/", (pedido, respuesta) => {
    respuesta.render('index')
})

app.get("/formulario", (pedido, respuesta) => {
    respuesta.render('formulario')
})

app.listen(port)