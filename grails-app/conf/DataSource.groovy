dataSource {
	pooled = true
	driverClassName = "org.postgresql.Driver"
	username = "dyukiuwlnfbkkl"
	password = "AAwtcOEHS3kbK7MPJ8hFfBArx2"
}
hibernate {
	cache.use_second_level_cache=true
	cache.use_query_cache=true
	cache.provider_class='org.hibernate.cache.EhCacheProvider'
}

// environment specific settings
environments {
	development{
		dataSource {
			dbCreate = "update"
			url = "jdbc:postgresql://ec2-54-235-147-211.compute-1.amazonaws.com:5432/d81nqjo6620ngp"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:postgresql://ec2-54-235-147-211.compute-1.amazonaws.com:5432/d81nqjo6620ngp"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:postgresql://ec2-54-235-147-211.compute-1.amazonaws.com:5432/d81nqjo6620ngp"

		}
	}
}