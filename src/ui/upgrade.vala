namespace BlankonUpgrade {
    class UpgradeUI : Gtk.Box {
        construct {
            this._buildUI ();
        }

        private void _buildUI () {
            // TODO: Add BlankOn logo or some illustration

            var title = new Gtk.Label ("Installing Upgrade");
            Pango.AttrList attrs = new Pango.AttrList ();
            attrs.insert (Pango.attr_scale_new (Pango.Scale.X_LARGE));
            title.attributes = attrs;

            // TODO: Remove this optional message
            // Replace with ProgressBar for loading indicator
            // TextView inside ScrolledWindow for verbose message
            var message = new Gtk.Label ("We are doing jobs to upgrade your system");

            this.set_orientation (Gtk.Orientation.VERTICAL);
            this.pack_start (title, false, false, 0);
            this.pack_start (message, false, false, 0);
        }

        // TODO: Create spawn function to call `scripts/upgrade.sh`
        // Need to define exit status so this app can determine the process status
        // Append the output of script to TextBuffer and set the buffer to TextView
    }
}
