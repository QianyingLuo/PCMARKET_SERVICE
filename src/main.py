from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

from .loaders import set_event_handlers
from .middlewares import set_middlewares
from .exception_handlers import set_exception_handlers
from .controller.index import router as index_router
from .controller.user import router as user_router
from .controller.dashboard import router as dashboard_router
from .controller.category import router as category_router
from .controller.offers import router as offers_router
from .controller.product import router as product_router
from .controller.orders import router as orders_router
from .controller.order_confirmation import router as order_confirmation_router
from .controller.favorites import router as favorites_router
from .controller.cart import router as cart_router
from .controller.checkout import router as checkout_router

app = FastAPI()

set_event_handlers(app)
set_middlewares(app)
set_exception_handlers(app)

app.mount("/static", StaticFiles(directory="src/assets/"), name="static")

app.include_router(index_router)
app.include_router(user_router, prefix="/user")
app.include_router(dashboard_router, prefix="/dashboard") 
app.include_router(category_router, prefix="/category") 
app.include_router(offers_router, prefix="/offers") 
app.include_router(product_router, prefix="/product") 
app.include_router(orders_router, prefix="/orders") 
app.include_router(order_confirmation_router, prefix="/order-confirmation") 
app.include_router(favorites_router, prefix="/favorites")
app.include_router(cart_router, prefix="/cart") 
app.include_router(checkout_router, prefix="/checkout") 

