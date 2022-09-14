namespace Cliente;

public partial class Pagina_prueba : ContentPage
{
	public Pagina_prueba()
	{
		InitializeComponent();
	}

	private async void youtube(object sender, EventArgs e)
	{
        await Launcher.Default.OpenAsync("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
    }
}