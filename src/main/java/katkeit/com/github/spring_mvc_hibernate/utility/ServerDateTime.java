package katkeit.com.github.spring_mvc_hibernate.utility;

import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;

/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-02-23
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

public class ServerDateTime
{
	private static final DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MMM dd yyyy");
	private static final DateTimeFormatter timeFormat = DateTimeFormatter.ofPattern("kk:mm");
	private static final Instant instance = Instant.ofEpochSecond(Instant.now().getEpochSecond());
	
	public static String getServerTime()
	{
		return String.format(instance.atZone(ZoneId.systemDefault()).toLocalTime().toString(), timeFormat);
	}
	
	public static String getServerDate()
	{
		return instance.atZone(ZoneId.systemDefault()).format(dateFormat) + " (" + instance.atZone(ZoneId.systemDefault()).getZone() + ")";
	}
}