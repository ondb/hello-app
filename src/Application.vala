public class MyApp : Gtk.Application { 
  
  public MyApp() {
    Object(
      application_id: "com.github.ondb.hello-app",
      flags         : ApplicationFlags.FLAGS_NONE
    );
  }

  protected override void activate() {
    var mainWindow = new Gtk.ApplicationWindow(this);
    var label      = new Gtk.Label(_("This is my first app!"));

    mainWindow.default_height = 360;
    mainWindow.default_width  = 480;
    mainWindow.title          = _("Hello-App");
    mainWindow.add(label);
    mainWindow.show_all();
  }
  
  public static int main(string[] args) {
    var app = new MyApp();
    return app.run(args);
  }
}