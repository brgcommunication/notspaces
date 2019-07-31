using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NOTSpaces.Utilities.Helpers
{
    public static class HtmlHelperExtensions
    {
        static internal dynamic _svgObj;

        public static IHtmlString InlineContent(this HtmlHelper htmlHelper, string bundleVirtualPath)
        {
            return InlineContent(htmlHelper, new string[] { bundleVirtualPath });
        }

        public static IHtmlString InlineContent(this HtmlHelper htmlHelper, string[] bundleVirtualPath)
        {
            var result = string.Empty;

            foreach (var path in bundleVirtualPath)
            {
                result += File.ReadAllText(htmlHelper.ViewContext.HttpContext.Server.MapPath(path));
            }

            return new HtmlString(result);
        }

        public static MvcHtmlString InlineSvg(this HtmlHelper helper, string id, string classes = null, string attributes = null)
        {
            if (_svgObj == null)
            {
                using (StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath("/assets/images/sprites/sprites.json")))
                {
                    _svgObj = JsonConvert.DeserializeObject(reader.ReadToEnd());
                }
            }

            var svgObj = (_svgObj as IEnumerable<dynamic>).FirstOrDefault(o => o.name == id);

            var viewBox = svgObj != null ? svgObj.viewBox : string.Empty;

            return MvcHtmlString.Create("<svg" + (!string.IsNullOrEmpty(classes) ? " class=\"" + classes + "\" " : null) + (!string.IsNullOrEmpty(attributes) ? attributes : null) + " viewBox=\"" + viewBox + "\"><use xlink:href=\"#" + id + "\" width=\"100%\" height=\"100%\"/></svg>");
        }
    }
}