using System.Linq;
using System.Text;
using System.Web;
using Umbraco.Core.Models;
using Umbraco.Web;

namespace NOTSpaces.Utilities.Helpers
{
    public static class ImageExtensions
    {
        public static IHtmlString GetSrcSet(this IPublishedContent item, int width = 0, int height = 0, string widths = "94,300,600,768,1024,1280,1600,1920")
        {
            StringBuilder sb = new StringBuilder(string.Empty);

            if (width == 0) {
                width = int.Parse(item.GetProperty("umbracoWidth").Value.ToString());
            }
            if (height == 0) {
                height = int.Parse(item.GetProperty("umbracoHeight").Value.ToString());
            }
            string[] splitWidths = widths.Split(',');

            foreach (string newWidth in splitWidths)
            {
                int newHeight = CalcHeight(width, height, int.Parse(newWidth));
                sb.Append(item.GetCropUrl(width: int.Parse(newWidth), height: newHeight, quality: 85));
                sb.Append(" ");
                sb.Append(newWidth);
                sb.Append("w");
                if (newWidth != splitWidths.Last())
                {
                    sb.Append(",");
                }

            }
            return (new HtmlString(sb.ToString()));
        }

        public static int CalcHeight(int paramOldWidth, int paramOldHeight, int paramNewWidth)
        {
            float oldWidth = paramOldWidth;
            float scaleFactor = paramNewWidth / oldWidth;

            float newHeight = paramOldHeight * scaleFactor;
            return ((int)newHeight);
        }
    }
}