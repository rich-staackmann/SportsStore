using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SportsStore.Domain.Entities;

namespace SportsStore.WebUI.Binders
{
    //we were explicitly using sessions in our controller before
    //this custom model binder will tell the MVC framework how to instantiate a cart object when it is an action method param
    //in this case we pull the cart out of the user's session, or create a new one
    public class CartModelBinder : IModelBinder
    {
        private const string sessionKey = "Cart";
        //a custom model binder for the cart model
        public object BindModel(ControllerContext controllerContext,
            ModelBindingContext bindingContext)
        {
            // get the Cart from the session
            Cart cart = (Cart)controllerContext.HttpContext.Session[sessionKey];
            // create the Cart if there wasn't one in the session data
            if (cart == null)
            {
                cart = new Cart();
                controllerContext.HttpContext.Session[sessionKey] = cart;
            }
            // return the cart
            return cart;
        }
    }
}