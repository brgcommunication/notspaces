using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NOTSpaces.Utilities.Helpers
{
    public class AppSettings
    {
        public string Stylesheet { get; set; }
        public string JavaScript { get; set; }
        public Fontset Fonts { get; set; }
        public Sprites Sprites { get; set; }
        public Location Location { get; set; }

        public AppSettings(string stylesheet, string javascript, Fontset fonts, Sprites sprites, string location)
        {
            Stylesheet = Fingerprint.Tag(stylesheet);
            JavaScript = Fingerprint.Tag(javascript);
            Fonts = fonts;
            Sprites = sprites;
            Location = new Location(location);
        }
    }

    public class Fontset
    {
        public string Woff { get; set; }
        public string Woff2 { get; set; }

        public Fontset(string woff, string woff2)
        {
            Woff = Fingerprint.Tag(woff);
            Woff2 = Fingerprint.Tag(woff2);
        }
    }

    public class Sprites
    {
        public string Data { get; set; }
        public string Revision { get; set; }

        public Sprites(string file)
        {
            Data = Fingerprint.Tag(file);
            Revision = Fingerprint.Revision(file);
        }
    }

    public class Location
    {
        public string Latitude { get; set; }
        public string Longitude { get; set; }

        public Location(string location)
        {
            var l = location.Split(',');

            Latitude = l.ElementAt(0);
            Longitude = l.ElementAt(1);
        }
    }
}