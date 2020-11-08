namespace BlankonUpgrade {
    class AppUI : Gtk.Box {
        construct {
            this._buildUI ();
        }

        // TODO:
        // Implement check state, call `scripts/check.sh`
        // Implement preparation state, call `scripts/prepare.sh`
        // Implement reboot state coundown
        private void _buildUI () {
            // TODO: Add ilustration based on states

            var title = new Gtk.Label ("Upgrade your OS to Verbeek");
            Pango.AttrList attrs = new Pango.AttrList ();
            attrs.insert (Pango.attr_scale_new (Pango.Scale.X_LARGE));
            title.attributes = attrs;

            // TODO:
            // Add ProgressBar for loading indicator
            // Add TextView inside ScrolledWindow for verbose message
            var message = new Gtk.Label ("Latest version of BlankOn are available. Before you upgrade the system, please plug your charger adapter.");
            message.set_line_wrap (true);

            this.set_orientation (Gtk.Orientation.VERTICAL);
            this.pack_start (title, false, false, 0);
            this.pack_start (message, false, false, 0);
        }
    }
}
