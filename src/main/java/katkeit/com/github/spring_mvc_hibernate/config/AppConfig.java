package katkeit.com.github.spring_mvc_hibernate.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-02-13
 *
 * license: Apache License 2.0
 * description:
 *		Copyright 2023 Katelyn Eitel 
 * 		Licensed under the Apache License, Version 2.0 (the "License");
 * 		you may not use this file except in compliance with the License.
 * 		You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
 *	
 *		Unless required by applicable law or agreed to in writing, software
 *		distributed under the License is distributed on an "AS IS" BASIS,
 *		WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *		See the License for the specific language governing permissions and
 *		limitations under the License.
 */

/**
 * @Configuation This Spring annotation indicates that a class declares
 * one or more @Bean methods and may be processed by the Spring container
 * to generate bean definitions and service requests for those beans at runtime.
 * 
 * @EnableWebMvc This Spring annotation imports the Web MVC configuration
 * files.
 * 
 * @ComponentScan This Spring annotation tells Spring which package to
 * start scanning for beans, which is typical the base package.
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"katkeit.com.github.spring_mvc_hibernate"})
public class AppConfig
{
	/**
	 * The InternalResourceViewResolver finds all the JSP files
	 * to display or view the web-pages to the requestor.
	 * 
	 * @return Returns an InternalResourceViewResolver.
	 */
	@Bean
	public InternalResourceViewResolver resolver()
	{
		InternalResourceViewResolver resolver =
				new InternalResourceViewResolver();
		
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/view/");
		resolver.setSuffix(".jsp");
		
		return resolver;
	}
	
	/**
	 * Pulls any .properties files from "src/main/resources" that start with "messages".
	 * @return Returns a configured ResourceBundleMessageSource.
	 */
	@Bean
	public ResourceBundleMessageSource messageSource()
	{
		ResourceBundleMessageSource messageSource =
				new ResourceBundleMessageSource();
		
		messageSource.setBasenames("messages");
		messageSource.setDefaultEncoding("UTF-8");
		
		return messageSource;
	}
}