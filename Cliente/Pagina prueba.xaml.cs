namespace Cliente;

public partial class Pagina_prueba : ContentPage
{
	public Pagina_prueba()
	{
		InitializeComponent();
	}

	private async void youtube(object sender, EventArgs e)
	{
        await Launcher.Default.OpenAsync("https://youtube.com.ar/nasa");
    }
}