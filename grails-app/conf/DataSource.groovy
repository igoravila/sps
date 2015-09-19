dataSource {
	pooled = true
	driverClassName = "org.postgresql.Driver"
	username = "wugbhklpgxhogo"
	password = "ppomc8SRrubph7PJayFDRABixs"
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
			url = "jdbc:postgresql://ec2-54-235-147-211.compute-1.amazonaws.com:5432/ddgdnbudvl6s4u"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:postgresql://ec2-54-235-147-211.compute-1.amazonaws.com:5432/ddgdnbudvl6s4u"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:postgresql://ec2-54-235-147-211.compute-1.amazonaws.com:5432/ddgdnbudvl6s4u"

		}
	}
}