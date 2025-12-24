#!/usr/bin/python3

# Simple utility to query countries with direct bounders to given one.
#     Copyright (C) 2025  Kirill Shakirov
#
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <https://www.gnu.org/licenses/>.

import argparse
import sys

NEAR_COUNTRIES = {
    "AD": ['FR', 'ES'],
    "AE": ['OM', 'SA'],
    "AF": ['CN', 'IR', 'PK', 'TJ', 'TM', 'UZ'],
    "AL": ['GR', 'ME', 'MK', 'RS'],
    "AM": ['AZ', 'GE', 'IR', 'TR'],
    "AO": ['CG', 'CD', 'NA', 'ZM'],
    "AR": ['BO', 'BR', 'CL', 'PY', 'UY'],
    "AT": ['CZ', 'DE', 'HU', 'IT', 'LI', 'SK', 'SI', 'CH'],
    "AZ": ['AM', 'GE', 'IR', 'RU', 'TR'],
    "BA": ['HR', 'ME', 'RS'],
    "BD": ['IN', 'MM'],
    "BE": ['FR', 'DE', 'LU', 'NL'],
    "BF": ['BJ', 'CI', 'GH', 'ML', 'NE', 'TG'],
    "BG": ['GR', 'MK', 'RO', 'RS', 'TR'],
    "BI": ['CD', 'RW', 'TZ'],
    "BJ": ['BF', 'NE', 'NG', 'TG'],
    "BN": ['MY'],
    "BO": ['AR', 'BR', 'CL', 'PY', 'PE'],
    "BR": ['AR', 'BO', 'CO', 'GF', 'GY', 'PY', 'PE', 'SR', 'UY', 'VE'],
    "BT": ['CN', 'IN'],
    "BW": ['NA', 'ZA', 'ZM', 'ZW'],
    "BY": ['LV', 'LT', 'PL', 'RU', 'UA'],
    "BZ": ['GT', 'MX'],
    "CA": ['US'],
    "CD": ['AO', 'BI', 'CF', 'CG', 'RW', 'SS', 'TZ', 'UG', 'ZM'],
    "CF": ['CM', 'TD', 'CG', 'CD', 'SS', 'SD'],
    "CG": ['AO', 'CM', 'CF', 'CD', 'GA'],
    "CH": ['AT', 'FR', 'DE', 'IT', 'LI'],
    "CI": ['BF', 'GH', 'GN', 'LR', 'ML'],
    "CL": ['AR', 'BO', 'PE'],
    "CM": ['CF', 'TD', 'CG', 'GQ', 'GA', 'NG'],
    "CN": ['AF', 'BT', 'HK', 'IN', 'KZ', 'KP', 'KG', 'LA', 'MO', 'MN', 'MM', 'NP', 'PK', 'RU', 'TJ', 'VN'],
    "CO": ['BR', 'EC', 'PA', 'PE', 'VE'],
    "CR": ['NI', 'PA'],
    "CZ": ['AT', 'DE', 'PL', 'SK'],
    "DE": ['AT', 'BE', 'CZ', 'DK', 'FR', 'LU', 'NL', 'PL', 'CH'],
    "DJ": ['ER', 'ET', 'SO'],
    "DK": ['DE'],
    "DO": ['HT'],
    "DZ": ['LY', 'ML', 'MR', 'MA', 'NE', 'TN', 'EH'],
    "EC": ['CO', 'PE'],
    "EE": ['LV', 'RU'],
    "EG": ['IL', 'LY', 'PS', 'SD'],
    "EH": ['DZ', 'MR', 'MA'],
    "ER": ['DJ', 'ET', 'SD'],
    "ES": ['AD', 'FR', 'GI', 'MA', 'PT'],
    "ET": ['DJ', 'ER', 'KE', 'SO', 'SS', 'SD'],
    "FI": ['NO', 'RU', 'SE'],
    "FR": ['AD', 'BE', 'DE', 'IT', 'LU', 'MC', 'ES', 'CH'],
    "GA": ['CM', 'CG', 'GQ'],
    "GB": ['IE'],
    "GE": ['AM', 'AZ', 'RU', 'TR'],
    "GF": ['BR', 'SR'],
    "GH": ['BF', 'CI', 'TG'],
    "GI": ['ES'],
    "GM": ['SN'],
    "GN": ['CI', 'GW', 'LR', 'ML', 'SN', 'SL'],
    "GQ": ['CM', 'GA'],
    "GR": ['AL', 'BG', 'MK', 'TR'],
    "GT": ['BZ', 'SV', 'HN', 'MX'],
    "GW": ['GN', 'SN'],
    "GY": ['BR', 'SR', 'VE'],
    "HK": ['CN'],
    "HN": ['SV', 'GT', 'NI'],
    "HR": ['BA', 'HU', 'ME', 'RS', 'SI'],
    "HT": ['DO'],
    "HU": ['AT', 'HR', 'RO', 'RS', 'SK', 'SI', 'UA'],
    "ID": ['MY', 'PG', 'TL'],
    "IE": ['GB'],
    "IL": ['EG', 'JO', 'LB', 'PS', 'SY'],
    "IN": ['BD', 'BT', 'CN', 'MM', 'NP', 'PK'],
    "IQ": ['IR', 'JO', 'KW', 'SA', 'SY', 'TR'],
    "IR": ['AF', 'AM', 'AZ', 'IQ', 'PK', 'TR', 'TM'],
    "IT": ['AT', 'FR', 'SM', 'SI', 'CH', 'VA'],
    "JO": ['IQ', 'IL', 'PS', 'SA', 'SY'],
    "KE": ['ET', 'SO', 'SS', 'TZ', 'UG'],
    "KG": ['CN', 'KZ', 'TJ', 'UZ'],
    "KH": ['LA', 'TH', 'VN'],
    "KP": ['CN', 'KR', 'RU'],
    "KR": ['KP'],
    "KW": ['IQ', 'SA'],
    "KZ": ['CN', 'KG', 'RU', 'TM', 'UZ'],
    "LA": ['CN', 'KH', 'MM', 'TH', 'VN'],
    "LB": ['IL', 'SY'],
    "LI": ['AT', 'CH'],
    "LR": ['CI', 'GN', 'SL'],
    "LS": ['ZA'],
    "LT": ['BY', 'LV', 'PL', 'RU'],
    "LU": ['BE', 'DE', 'FR'],
    "LV": ['BY', 'EE', 'LT', 'RU'],
    "LY": ['DZ', 'TD', 'EG', 'NE', 'SD', 'TN'],
    "MA": ['DZ', 'ES', 'EH'],
    "MC": ['FR'],
    "MD": ['RO', 'UA'],
    "ME": ['AL', 'BA', 'HR', 'RS'],
    "MF": ['SX'],
    "MK": ['AL', 'BG', 'GR', 'RS'],
    "ML": ['DZ', 'BF', 'CI', 'GN', 'MR', 'NE', 'SN'],
    "MM": ['BD', 'CN', 'IN', 'LA', 'TH'],
    "MN": ['CN', 'RU'],
    "MO": ['CN'],
    "MR": ['DZ', 'ML', 'SN', 'EH'],
    "MW": ['MZ', 'TZ', 'ZM'],
    "MX": ['BZ', 'GT', 'US'],
    "MY": ['BN', 'ID', 'TH'],
    "MZ": ['MW', 'SZ', 'ZA', 'TZ', 'ZM', 'ZW'],
    "NA": ['AO', 'BW', 'ZA', 'ZM'],
    "NE": ['DZ', 'BJ', 'BF', 'TD', 'LY', 'ML', 'NG'],
    "NG": ['BJ', 'CM', 'TD', 'NE'],
    "NI": ['CR', 'HN'],
    "NL": ['BE', 'DE'],
    "NO": ['FI', 'RU', 'SE'],
    "NP": ['CN', 'IN'],
    "OM": ['AE', 'SA', 'YE'],
    "PA": ['CO', 'CR'],
    "PE": ['BO', 'BR', 'CL', 'CO', 'EC'],
    "PG": ['ID'],
    "PK": ['AF', 'CN', 'IN', 'IR'],
    "PL": ['BY', 'CZ', 'DE', 'LT', 'RU', 'SK', 'UA'],
    "PS": ['EG', 'IL', 'JO'],
    "PT": ['ES'],
    "PY": ['AR', 'BO', 'BR'],
    "QA": ['SA'],
    "RO": ['BG', 'HU', 'MD', 'RS', 'UA'],
    "RS": ['AL', 'BA', 'BG', 'HR', 'HU', 'ME', 'MK', 'RO'],
    "RU": ['AZ', 'BY', 'CN', 'EE', 'FI', 'GE', 'KZ', 'KP', 'LV', 'LT', 'MN', 'NO', 'PL', 'UA'],
    "RW": ['BI', 'CD', 'TZ', 'UG'],
    "SA": ['IQ', 'JO', 'KW', 'OM', 'QA', 'AE', 'YE'],
    "SD": ['CF', 'TD', 'EG', 'ET', 'ER', 'LY', 'SS'],
    "SE": ['FI', 'NO'],
    "SI": ['AT', 'HR', 'HU', 'IT'],
    "SK": ['AT', 'CZ', 'HU', 'PL', 'UA'],
    "SL": ['GN', 'LR'],
    "SM": ['IT'],
    "SN": ['GM', 'GN', 'GW', 'ML', 'MR'],
    "SO": ['DJ', 'ET', 'KE'],
    "SR": ['BR', 'GF', 'GY'],
    "SS": ['CF', 'CD', 'ET', 'KE', 'SD', 'UG'],
    "SV": ['GT', 'HN'],
    "SX": ['MF'],
    "SY": ['IQ', 'IL', 'JO', 'LB', 'TR'],
    "SZ": ['MZ', 'ZA'],
    "TD": ['CM', 'CF', 'LY', 'NE', 'NG', 'SD'],
    "TG": ['BJ', 'BF', 'GH'],
    "TH": ['KH', 'LA', 'MY', 'MM'],
    "TJ": ['AF', 'CN', 'KG', 'UZ'],
    "TL": ['ID'],
    "TM": ['AF', 'IR', 'KZ', 'UZ'],
    "TN": ['DZ', 'LY'],
    "TR": ['AM', 'AZ', 'BG', 'GE', 'GR', 'IR', 'IQ', 'SY'],
    "TZ": ['BI', 'CD', 'KE', 'MW', 'MZ', 'RW', 'UG', 'ZM'],
    "UA": ['BY', 'HU', 'MD', 'PL', 'RO', 'RU', 'SK'],
    "UG": ['CD', 'KE', 'RW', 'SS', 'TZ'],
    "US": ['CA', 'MX'],
    "UY": ['AR', 'BR'],
    "UZ": ['AF', 'KZ', 'KG', 'TJ', 'TM'],
    "VA": ['IT'],
    "VE": ['BR', 'CO', 'GY'],
    "VN": ['KH', 'CN', 'LA'],
    "YE": ['OM', 'SA'],
    "ZA": ['BW', 'LS', 'MZ', 'NA', 'SZ', 'ZW'],
    "ZM": ['AO', 'BW', 'CD', 'MW', 'MZ', 'NA', 'TZ', 'ZW'],
    "ZW": ['BW', 'MZ', 'ZA', 'ZM'],
}


def main():
    # Initialize arguments parser
    parser = argparse.ArgumentParser(
        prog="get_near_countries.py",
        description="Simple utility to query countries with direct bounders to given one.",
        epilog="Have a nice day!")

    parser.add_argument("-c", "--country",
                        action="store",
                        default=None,
                        help="Country for which you want to do the search.",
                        required=True)
    parser.add_argument("-r", "--recursion",
                        action="store",
                        type=int,
                        default=1,
                        help="Recursion depth, 1 means search to only direct boarder, "
                             "2 means to search also for countries found on step 1, etc.",
                        required=False)

    args = parser.parse_args()

    search_country = args.country
    recursion_depth = args.recursion
    if recursion_depth > 12:
        sys.exit("Recursion should be less than or equal 12! You doing something stupid here.")

    result = set(NEAR_COUNTRIES[search_country])
    for i in range(1, recursion_depth, 1):
        n_c = list(result)
        for country in n_c:
            result.update(NEAR_COUNTRIES[country])

    list_result = list(result)
    list_result.sort()
    sys.stdout.write(' '.join(list_result))
    sys.stdout.flush()


if __name__ == '__main__':
    main()
