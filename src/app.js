let express = require('express')
const PORT = process.env.PORT || 3000
let morgan = require('morgan')

let app = express()

app.use(morgan('tiny'))

app.get('/', (req, res) => {
  res.send('hi docker app')
})

// Custom 404 route not found handler
app.use((req, res) => {
  res.status(404).send('404 not found')
})

app.listen(PORT, () => {
  console.log(`Listening on PORT ${PORT}`);
})