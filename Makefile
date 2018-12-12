#
#     Copyright (C) 2011 Loic Dachary <loic@dachary.org>
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
#     along with this program.  If not, see <http:www.gnu.org/licenses/>.
#
version = 1.5.7

all: clean compose

compose:
	$(info *** COMPOSE ***)
	cp -r plugin temp
	sed -i "s/VERSION/${version}/" temp/description.xml
	cp LICENSE temp
	cp README.md temp

	cd temp; zip -r ../multiFormatSave_v${version}.oxt *
	rm -rf temp

clean:
	$(info *** CLEAN ***)
	rm -f *.oxt
	rm -rf temp
