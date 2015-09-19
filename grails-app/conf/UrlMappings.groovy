class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

		"/$controller/api/$id?" (parseRequest: true) {
			action = [GET:"show", POST:"save", PUT:"update", DELETE:"delete"]
		  }

        "/"(view:"/index")
        "500"(view:'/error')
		
	}
}
