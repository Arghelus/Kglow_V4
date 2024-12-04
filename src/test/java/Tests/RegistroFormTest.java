/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tests;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class RegistroFormTest {
    public static void main(String[] args) {
        // Configura el path de tu WebDriver (ChromeDriver en este caso)
        System.setProperty("webdriver.chrome.driver", "C:\\SeleniumDrivers\\chromedriver.exe");

        // Inicializa el WebDriver
        WebDriver driver = new ChromeDriver();

        try {
            // Abre la página web con el formulario
            driver.get("http://localhost:8080/Register.jsp"); // Ajusta la URL según tu configuración

            // Verifica que el botón de registro esté presente
            WebElement botonRegistrar = driver.findElement(By.xpath("//button[@type='submit']"));
            System.out.println("El botón de registro está presente: " + (botonRegistrar != null));

            // Interactúa con algunos campos de entrada
            WebElement nombreInput = driver.findElement(By.id("nombres"));
            nombreInput.sendKeys("Juan");

            WebElement apellidosInput = driver.findElement(By.id("apellidos"));
            apellidosInput.sendKeys("Perez");

            WebElement celularInput = driver.findElement(By.id("celular"));
            celularInput.sendKeys("123456789");

            WebElement emailInput = driver.findElement(By.id("email"));
            emailInput.sendKeys("juan.perez@example.com");

            WebElement passwordInput = driver.findElement(By.id("password"));
            passwordInput.sendKeys("Contraseña123");

            WebElement confirmPasswordInput = driver.findElement(By.id("confirm-password"));
            confirmPasswordInput.sendKeys("Contraseña123");

            // Simula el clic en el botón de registro
            botonRegistrar.click();

            // Verifica la acción esperada (esto puede ser un mensaje de éxito o redirección)
            // Por ejemplo, verificar si se redirige a otra página
            String currentUrl = driver.getCurrentUrl();
            System.out.println("URL después de hacer clic en el botón de registro: " + currentUrl);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Cierra el navegador al final
            driver.quit();
        }
    }
}

