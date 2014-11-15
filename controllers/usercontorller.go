package controllers

import (
	"strconv"

	"github.com/thanzen/eq/services/userservice"

	"github.com/gin-gonic/gin"
)

type UserController struct {
	UserService *userservice.UserService
}

func (ct *UserController) Register(engine *gin.Engine, group ...*gin.RouterGroup) {
	engine.GET("user/:id", ct.get)
}
func (ct UserController) get(c *gin.Context) {
	id, err := strconv.Atoi(c.Params.ByName("id"))
	if err != nil {
		c.Error(err, "Invalid id")
		c.Abort(500)
	} else {
		user := ct.UserService.GetById(id)
		c.JSON(200, user)
	}

}
