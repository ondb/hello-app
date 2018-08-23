const string GETTEXT_PACKAGE = "hello";

public class MyApp : Gtk.Application { 
  
  public MyApp() {
    Object(
      application_id: "com.github.ondb.hello-app",
      flags         : ApplicationFlags.FLAGS_NONE
    );
  }

  protected override void activate() {
    var mainWindow = new Gtk.ApplicationWindow(this);
    var grid       = new Gtk.Grid();
    var button     = new Gtk.Button.with_label(_("Click me!"));
    var label      = new Gtk.Label(null);
    
    grid.orientation = Gtk.Orientation.VERTICAL;
    grid.row_spacing = 6;
    grid.add(button);
    grid.add(label);

    button.clicked.connect(() => {
      label.label      = _("Kono Sekai!");
      button.sensitive = false;
    });

    mainWindow.default_height = 360;
    mainWindow.default_width  = 480;
    mainWindow.title          = _("Hello-App");
    mainWindow.add(grid);
    mainWindow.show_all();
  }
  
  public static int main(string[] args) {
    var app = new MyApp();
    return app.run(args);
  }
}