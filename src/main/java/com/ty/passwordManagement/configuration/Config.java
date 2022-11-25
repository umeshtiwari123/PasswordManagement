package com.ty.passwordManagement.configuration;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan(basePackages = {"com.ty.passwordManagement"})
@EnableWebMvc
public class Config {

	@Bean(name="em")
	@Scope(value="prototype")
	public EntityManager getEmf(){	
		return Persistence.createEntityManagerFactory("project").createEntityManager();
	}
}
