/*
 * Copyright (C) 2004  Derek James and Philip Tucker
 *
 * This file is part of ANJI (Another NEAT Java Implementation).
 *
 * ANJI is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 * 
 * created by Philip Tucker on Jun 12, 2004
 */

package com.anji.imaging;


/**
 * Used to translate variables with a certain range to variables with other ranges.
 * For example, if an objetc is returning values in the range 0..1 and they need to be translated
 * to a value between -1..1.
 * @author Philip Tucker
 */
public interface RangeTranslator {

	/**
	 * @param value
	 * @return translated value
	 */
	public double translate( double value );
}

