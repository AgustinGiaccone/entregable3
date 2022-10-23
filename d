[1mdiff --git a/server.js b/server.js[m
[1mindex ea3265c..3dfd7aa 100644[m
[1m--- a/server.js[m
[1m+++ b/server.js[m
[36m@@ -5,21 +5,21 @@[m [mconst port = process.env.PORT || 80[m
 [m
 const vehiculos = new Contenedor('productos.txt')[m
 [m
[31m-const servidor = server.listen(port, ()=>{[m
[32m+[m[32mconst servidor = server.listen(port, () => {[m
     console.log(`servidor en el http://localhost:${port}`)[m
 })[m
 [m
[31m-server.get('/', (req,res)=>{[m
[32m+[m[32mserver.get('/', (req, res) => {[m
     res.send('<h1>Bienvenido al entregable numero 3 de backend</h1><h2>Para visualisar todos los productos:</h2> <a>https://entregable3-giaccone.herokuapp.com/productos</a><br><h2>Para visualisar un producto aleatorio:</h2> <a>https://entregable3-giaccone.herokuapp.com/productosRandom</a>')[m
 })[m
 [m
[31m-server.get('/productos', async (req,res)=>{[m
[32m+[m[32mserver.get('/productos', async (req, res) => {[m
     const automovil = await vehiculos.getAll()[m
     res.send(automovil)[m
 })[m
[31m-server.get('/productosRandom', async(req,res)=>{[m
[32m+[m[32mserver.get('/productosRandom', async (req, res) => {[m
     const automovil = await vehiculos.getAll()[m
[31m-    let vehiculoRandom = parseInt(Math.random() *automovil.length)[m
[32m+[m[32m    let vehiculoRandom = parseInt(Math.random() * automovil.length)[m
     res.send(automovil[vehiculoRandom])[m
 })[m
[31m-servidor.on('error', error=> console.log(`error ${error}`))[m
\ No newline at end of file[m
[32m+[m[32mservidor.on('error', error => console.log(`error ${error}`))[m
\ No newline at end of file[m
