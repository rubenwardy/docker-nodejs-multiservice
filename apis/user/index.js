const Koa = require('koa')
const Router = require('koa-router')

const app = new Router()
const koa = new Koa()


app.get('/', async (ctx) => {
  ctx.body = {
	  hello: "world",
  }
})


koa.use(app.routes())
koa.use(app.allowedMethods())
koa.listen(process.env.PORT || 3001, () => console.log('Listening on :', process.env.PORT || 3001))
