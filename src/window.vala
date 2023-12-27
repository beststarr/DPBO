/* window.vala
 *
 * Copyright 2023 dheams
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

namespace GtkApp {
    [GtkTemplate (ui = "/org/gtk/ver1/window.ui")]
    public class Window : Gtk.ApplicationWindow {
        [GtkChild]
        //  private unowned Gtk.Label label;
        //  [GtkChild]
        private unowned Gtk.HeaderBar header_bar;
        [GtkChild]
        private unowned Gtk.Button registerButton;
        [GtkChild]
        private unowned Gtk.Button loginButton;

        weak Gtk.Application app;

        public Window (Gtk.Application app) {
            Object (application: app);
            this.app = app;
        }

        construct{
            var css_provider = new Gtk.CssProvider();
            string path = "/mnt/c/dokumen/DHEAMS/dpbo/login/src/style.css";
            css_provider.load_from_path(path);
            Gtk.StyleContext.add_provider_for_display(Gdk.Display.get_default(), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);
            //  label.add_css_class("text_label");
            registerButton.clicked.connect(navigate);
            loginButton.clicked.connect(navigater);

    
        }
        public void navigate(){
            Gtk.Window win = this.app.active_window;
            win = new GtkApp.RegisterPage(this.app);
            win.present();
            this.close();
        }

        public void navigater(){
            Gtk.Window win = this.app.active_window;
            win = new GtkApp.MenuPage(this.app);
            win.present();
            this.close();
        }

    }
}
