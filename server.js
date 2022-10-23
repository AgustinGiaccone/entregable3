const express = require('express')
const Contenedor = require('./Contenedor.js')
const server = express()
const port = process.env.PORT || 80

const vehiculos = new Contenedor('productos.txt')

const servidor = server.listen(port, () => {
    console.log(`servidor en el http://localhost:${port}`)
})

server.get('/', (req, res) => {
    res.send('<h1>Bienvenido al entregable numero 3 de backend</h1><h2>Para visualisar todos los productos:</h2> <a>https://entregable3-giaccone.herokuapp.com/productos</a><br><h2>Para visualisar un producto aleatorio:</h2> <a>https://entregable3-giaccone.herokuapp.com/productosRandom</a>')
})

server.get('/productos', async (req, res) => {
    const automovil = await vehiculos.getAll()
    res.send(automovil)
})
server.get('/productosRandom', async (req, res) => {
    const automovil = await vehiculos.getAll()
    let vehiculoRandom = parseInt(Math.random() * automovil.length)
    res.send(automovil[vehiculoRandom])
})
servidor.on('error', error => console.log(`error ${error}`))