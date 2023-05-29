package katkeit.com.github.spring_mvc_hibernate.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-02-24
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

@Configuration
@PropertySource("classpath:hibernate-config.properties")
@EnableTransactionManagement
public class HibernateConfig
{
	@Autowired
	private Environment environment;
	
	@Bean
	public LocalSessionFactoryBean sessionFactory()
	{
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		
		sessionFactory.setDataSource(dataSource());
		sessionFactory.setPackagesToScan(new String[] {
				" katkeit.com.github.spring_mvc_hibernate.model"
		});
		
		sessionFactory.setHibernateProperties(hibernateProperties());
		return sessionFactory;
	}
	
	@Bean
	public DataSource dataSource()
	{
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		dataSource.setDriverClassName(environment.getRequiredProperty("database.jdbc.driverName"));
		dataSource.setUrl(environment.getRequiredProperty("database.jdbc.connectionUrl"));
		dataSource.setUsername(environment.getRequiredProperty("database.jdbc.username"));
		dataSource.setPassword(environment.getRequiredProperty("database.jdbc.password"));
		
		return dataSource;
	}
	
	/* Additional Information
	 * 	>> Website: https://docs.jboss.org/hibernate/stable/core.old/reference/en/html/configuration-optional.html
	 */
	private Properties hibernateProperties()
	{
		Properties properties = new Properties();
		
		properties.put("hibernate.jdbc.use_get_generated_keys", environment.getRequiredProperty("hibernate.jdbc.useGetGeneratedKeys"));
		
		properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
		properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.showSql"));
		properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.formatSql"));
		properties.put("hibernate.generate_statistics", environment.getRequiredProperty("hibernate.generateStatistics"));
		properties.put("hibernate.use_sql_comments", environment.getRequiredProperty("hibernate.useSqlComments"));
		properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2DdlAuto"));
		
		properties.put("hibernate.c3p0.min_size", environment.getRequiredProperty("hibernate.c3p0.minimumSize"));
		properties.put("hibernate.c3p0.max_size", environment.getRequiredProperty("hibernate.c3p0.maximumSize"));
		properties.put("hibernate.c3p0.timeout", environment.getRequiredProperty("hibernate.c3p0.timeOut"));
		properties.put("hibernate.c3p0.max_statements", environment.getRequiredProperty("hibernate.c3p0.maxStatements"));
		
		return properties;
	}
	
	@Bean
	public HibernateTransactionManager getTransactionManager()
	{
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory().getObject());
		return transactionManager;
	}
}