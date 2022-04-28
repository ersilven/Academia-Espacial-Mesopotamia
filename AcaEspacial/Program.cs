using AcaEspacial.Servicios;
using AcaEspacial.Data;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authentication.Cookies;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddDbContext<AcademiaContext>(options =>
options.UseSqlServer(builder.Configuration.GetConnectionString("AcademiaConnection")));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();



builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

builder.Services.AddScoped<PaswordHasher>();
builder.Services.AddScoped<SecurityEncrypt>();

builder.Services.AddHttpContextAccessor();
builder.Services.AddScoped<HttpContextAccessor>();


builder.Services.AddAuthentication(
    options =>
    {
        options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
    }).AddCookie(
    r =>
    {
        r.SlidingExpiration = true;
        r.Cookie.Name = "Academia.Session";
        r.LoginPath = new PathString("/Account/Login");
        r.LogoutPath = new PathString("/Account/LogOff");
        r.AccessDeniedPath = new PathString("/Account/CallUnauthorized");
        r.ExpireTimeSpan = TimeSpan.FromMinutes(15);
        r.Cookie.SameSite = SameSiteMode.None;
    });

builder.Services.AddSignalR(e =>
{
    e.MaximumReceiveMessageSize = 102400000;
});


var app = builder.Build();



// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseBrowserLink();
    app.UseMigrationsEndPoint();
    app.UseDeveloperExceptionPage();
}
else
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();
app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
