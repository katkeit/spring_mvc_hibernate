package katkeit.com.github.spring_mvc_hibernate.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

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

public class SpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer
{

	/**
	 * Retrieves any configuration classes that are not needed
	 * for web or WebServlet.
	 */
	@Override
	protected Class<?>[] getRootConfigClasses()
	{
		return null;
	}

	/**
	 * Retrieves any configuration classes needed for Spring MVC.
	 */
	@Override
	protected Class<?>[] getServletConfigClasses()
	{
		return new Class[] { AppConfig.class };
	}

	/**
	 * Retrieves any requests for this "site" after the / at the
	 * end of the project name. Example: localhost:8080/spring_mvc_hibernate/
	 */
	@Override
	protected String[] getServletMappings()
	{
		return new String[] { "/spring_mvc_hibernate" };
	}
}