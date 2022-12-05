package app.micronaut.Controller

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get
import io.micronaut.http.annotation.Produces
import io.micronaut.http.MediaType

@Controller("/hello")
class HelloController {

    @Get
    @Produces (MediaType.TEXT_PLAIN)
    fun hello (): String{
        return "Hello World"
    }
}