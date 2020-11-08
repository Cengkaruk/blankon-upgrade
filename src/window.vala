/* window.vala
 *
 * Copyright 2020 Aji Kisworo Mukti
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace BlankonUpgrade {
	public class Window : Gtk.ApplicationWindow {
		public Window (Gtk.Application app) {
			Object (application: app);
		}

		construct {
		    window_position = Gtk.WindowPosition.CENTER;
		    set_default_size (600, 400);

		    if (this._is_upgrade_state ()) {
                fullscreen ();

                var upgradeUI = new BlankonUpgrade.UpgradeUI ();
                this.add (upgradeUI);
		    } else {
		        var headerbar = new BlankonUpgrade.HeaderBar ();
		        set_titlebar (headerbar);

                var AppUI = new BlankonUpgrade.AppUI ();
                this.add (AppUI);
		    }

		    show_all();
		}

		private bool _is_upgrade_state () {
		    // TODO: Create some "lock" mechanism to detect the upgrade state
		    // when app started at booting up
		    return true;
		}
	}
}
