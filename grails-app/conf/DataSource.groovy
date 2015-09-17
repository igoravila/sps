dataSource {
	pooled = true
	driverClassName = "org.postgresql.Driver"
	username = "postgres"
	password = "abob2010@"
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
			url = "jdbc:postgresql://localhost:5432/sps"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:postgresql://localhost:5432/sps"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:postgresql://localhost:5432/sps"
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=false
				validationQuery="SELECT 1"
				jdbcInterceptors="ConnectionState"
			}
		}
	}
}