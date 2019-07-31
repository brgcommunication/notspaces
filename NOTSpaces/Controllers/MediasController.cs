using NOTSpaces.Utilities.Models;
using System.Collections.Generic;
using System.Web.Mvc;
using Umbraco.Core.Models;
using Umbraco.Web.Mvc;

namespace NOTSpaces.Controllers
{
    public class MediasController : SurfaceController
    {
        // GET: Medias
        public ActionResult Medias(List<IPublishedContent> medias, int width = 0, int height = 0, string cssModifiers = null, string htmlAttributes = null, SliderViewModel sliderConfig = null)
        {
            var model = new MediasViewModel(medias, width, height);

            if (!string.IsNullOrEmpty(cssModifiers))
            {
                model.CssModifiers = cssModifiers;
            }

            if (!string.IsNullOrEmpty(htmlAttributes))
            {
                model.HtmlAttributes = htmlAttributes;
            }

            if (sliderConfig != null)
            {
                model.SliderConfig = sliderConfig;
            }

            return PartialView("~/views/partials/medias/medias.cshtml", model);
        }
    }
}