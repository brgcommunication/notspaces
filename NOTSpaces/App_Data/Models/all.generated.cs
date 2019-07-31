using  System;
using  System.Collections.Generic;
using  System.Linq.Expressions;
using  System.Web;
using  Umbraco.Core.Models;
using  Umbraco.Core.Models.PublishedContent;
using  Umbraco.Web;
using  Umbraco.ModelsBuilder;
using  Umbraco.ModelsBuilder.Umbraco;
[assembly: PureLiveAssembly]
[assembly:ModelsBuilderAssembly(PureLive = true, SourceHash = "ec26866bf20b3d8e")]
[assembly:System.Reflection.AssemblyVersion("0.0.0.1")]


// FILE: models.generated.cs

//------------------------------------------------------------------------------
// <auto-generated>
//   This code was generated by a tool.
//
//    Umbraco.ModelsBuilder v3.0.10.102
//
//   Changes to this file will be lost if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------















namespace Umbraco.Web.PublishedContentModels
{
	/// <summary>Media</summary>
	[PublishedContentModel("media")]
	public partial class Media : PublishedContentModel
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "media";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public Media(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Media, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Source
		///</summary>
		[ImplementPropertyType("mediaSource")]
		public IPublishedContent MediaSource
		{
			get { return this.GetPropertyValue<IPublishedContent>("mediaSource"); }
		}

		///<summary>
		/// Subititle
		///</summary>
		[ImplementPropertyType("mediaSubtitle")]
		public string MediaSubtitle
		{
			get { return this.GetPropertyValue<string>("mediaSubtitle"); }
		}

		///<summary>
		/// Title
		///</summary>
		[ImplementPropertyType("mediaTitle")]
		public string MediaTitle
		{
			get { return this.GetPropertyValue<string>("mediaTitle"); }
		}
	}

	/// <summary>TextualSection</summary>
	[PublishedContentModel("textualSection")]
	public partial class TextualSection : PublishedContentModel
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "textualSection";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public TextualSection(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<TextualSection, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Subtitle
		///</summary>
		[ImplementPropertyType("sectionSubtitle")]
		public string SectionSubtitle
		{
			get { return this.GetPropertyValue<string>("sectionSubtitle"); }
		}

		///<summary>
		/// Text
		///</summary>
		[ImplementPropertyType("sectionText")]
		public IHtmlString SectionText
		{
			get { return this.GetPropertyValue<IHtmlString>("sectionText"); }
		}

		///<summary>
		/// Title
		///</summary>
		[ImplementPropertyType("sectionTitle")]
		public string SectionTitle
		{
			get { return this.GetPropertyValue<string>("sectionTitle"); }
		}
	}

	// Mixin content Type 1116 with alias "footer"
	/// <summary>Footer</summary>
	public partial interface IFooter : IPublishedContent
	{
		/// <summary>Address</summary>
		string Address { get; }

		/// <summary>Company name</summary>
		string CompanyName { get; }

		/// <summary>E-mail address</summary>
		string EMailAddress { get; }

		/// <summary>Location</summary>
		string Location { get; }

		/// <summary>Phone number</summary>
		string PhoneNumber { get; }

		/// <summary>P.IVA</summary>
		string PIva { get; }
	}

	/// <summary>Footer</summary>
	[PublishedContentModel("footer")]
	public partial class Footer : PublishedContentModel, IFooter
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "footer";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public Footer(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Footer, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Address
		///</summary>
		[ImplementPropertyType("address")]
		public string Address
		{
			get { return GetAddress(this); }
		}

		/// <summary>Static getter for Address</summary>
		public static string GetAddress(IFooter that) { return that.GetPropertyValue<string>("address"); }

		///<summary>
		/// Company name
		///</summary>
		[ImplementPropertyType("companyName")]
		public string CompanyName
		{
			get { return GetCompanyName(this); }
		}

		/// <summary>Static getter for Company name</summary>
		public static string GetCompanyName(IFooter that) { return that.GetPropertyValue<string>("companyName"); }

		///<summary>
		/// E-mail address
		///</summary>
		[ImplementPropertyType("eMailAddress")]
		public string EMailAddress
		{
			get { return GetEMailAddress(this); }
		}

		/// <summary>Static getter for E-mail address</summary>
		public static string GetEMailAddress(IFooter that) { return that.GetPropertyValue<string>("eMailAddress"); }

		///<summary>
		/// Location
		///</summary>
		[ImplementPropertyType("location")]
		public string Location
		{
			get { return GetLocation(this); }
		}

		/// <summary>Static getter for Location</summary>
		public static string GetLocation(IFooter that) { return that.GetPropertyValue<string>("location"); }

		///<summary>
		/// Phone number
		///</summary>
		[ImplementPropertyType("phoneNumber")]
		public string PhoneNumber
		{
			get { return GetPhoneNumber(this); }
		}

		/// <summary>Static getter for Phone number</summary>
		public static string GetPhoneNumber(IFooter that) { return that.GetPropertyValue<string>("phoneNumber"); }

		///<summary>
		/// P.IVA
		///</summary>
		[ImplementPropertyType("pIVA")]
		public string PIva
		{
			get { return GetPIva(this); }
		}

		/// <summary>Static getter for P.IVA</summary>
		public static string GetPIva(IFooter that) { return that.GetPropertyValue<string>("pIVA"); }
	}

	/// <summary>Home</summary>
	[PublishedContentModel("homePage")]
	public partial class HomePage : PublishedContentModel, IContentBase, ICSshelpers, IFooter
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "homePage";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public HomePage(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<HomePage, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Description
		///</summary>
		[ImplementPropertyType("contractDescription")]
		public IHtmlString ContractDescription
		{
			get { return this.GetPropertyValue<IHtmlString>("contractDescription"); }
		}

		///<summary>
		/// Contract Sections
		///</summary>
		[ImplementPropertyType("contractSections")]
		public IEnumerable<IPublishedContent> ContractSections
		{
			get { return this.GetPropertyValue<IEnumerable<IPublishedContent>>("contractSections"); }
		}

		///<summary>
		/// Subtitle
		///</summary>
		[ImplementPropertyType("contractSubtitle")]
		public string ContractSubtitle
		{
			get { return this.GetPropertyValue<string>("contractSubtitle"); }
		}

		///<summary>
		/// Contract Title
		///</summary>
		[ImplementPropertyType("contractTitle")]
		public string ContractTitle
		{
			get { return this.GetPropertyValue<string>("contractTitle"); }
		}

		///<summary>
		/// Employees
		///</summary>
		[ImplementPropertyType("employees")]
		public IEnumerable<IPublishedContent> Employees
		{
			get { return this.GetPropertyValue<IEnumerable<IPublishedContent>>("employees"); }
		}

		///<summary>
		/// Medias
		///</summary>
		[ImplementPropertyType("heroMedias")]
		public IEnumerable<IPublishedContent> HeroMedias
		{
			get { return this.GetPropertyValue<IEnumerable<IPublishedContent>>("heroMedias"); }
		}

		///<summary>
		/// Subtitle
		///</summary>
		[ImplementPropertyType("heroSubtitle")]
		public string HeroSubtitle
		{
			get { return this.GetPropertyValue<string>("heroSubtitle"); }
		}

		///<summary>
		/// Text
		///</summary>
		[ImplementPropertyType("heroText")]
		public IHtmlString HeroText
		{
			get { return this.GetPropertyValue<IHtmlString>("heroText"); }
		}

		///<summary>
		/// Title
		///</summary>
		[ImplementPropertyType("heroTitle")]
		public string HeroTitle
		{
			get { return this.GetPropertyValue<string>("heroTitle"); }
		}

		///<summary>
		/// Description
		///</summary>
		[ImplementPropertyType("weAreDescription")]
		public IEnumerable<IPublishedContent> WeAreDescription
		{
			get { return this.GetPropertyValue<IEnumerable<IPublishedContent>>("weAreDescription"); }
		}

		///<summary>
		/// We Are Title
		///</summary>
		[ImplementPropertyType("weAreTitle")]
		public string WeAreTitle
		{
			get { return this.GetPropertyValue<string>("weAreTitle"); }
		}

		///<summary>
		/// We Do Title
		///</summary>
		[ImplementPropertyType("weDoTitle")]
		public string WeDoTitle
		{
			get { return this.GetPropertyValue<string>("weDoTitle"); }
		}

		///<summary>
		/// Page Title
		///</summary>
		[ImplementPropertyType("pageTitle")]
		public string PageTitle
		{
			get { return Umbraco.Web.PublishedContentModels.ContentBase.GetPageTitle(this); }
		}

		///<summary>
		/// Page Type
		///</summary>
		[ImplementPropertyType("pageType")]
		public string PageType
		{
			get { return Umbraco.Web.PublishedContentModels.CSshelpers.GetPageType(this); }
		}

		///<summary>
		/// Address
		///</summary>
		[ImplementPropertyType("address")]
		public string Address
		{
			get { return Umbraco.Web.PublishedContentModels.Footer.GetAddress(this); }
		}

		///<summary>
		/// Company name
		///</summary>
		[ImplementPropertyType("companyName")]
		public string CompanyName
		{
			get { return Umbraco.Web.PublishedContentModels.Footer.GetCompanyName(this); }
		}

		///<summary>
		/// E-mail address
		///</summary>
		[ImplementPropertyType("eMailAddress")]
		public string EMailAddress
		{
			get { return Umbraco.Web.PublishedContentModels.Footer.GetEMailAddress(this); }
		}

		///<summary>
		/// Location
		///</summary>
		[ImplementPropertyType("location")]
		public string Location
		{
			get { return Umbraco.Web.PublishedContentModels.Footer.GetLocation(this); }
		}

		///<summary>
		/// Phone number
		///</summary>
		[ImplementPropertyType("phoneNumber")]
		public string PhoneNumber
		{
			get { return Umbraco.Web.PublishedContentModels.Footer.GetPhoneNumber(this); }
		}

		///<summary>
		/// P.IVA
		///</summary>
		[ImplementPropertyType("pIVA")]
		public string PIva
		{
			get { return Umbraco.Web.PublishedContentModels.Footer.GetPIva(this); }
		}
	}

	/// <summary>Projects</summary>
	[PublishedContentModel("projects")]
	public partial class Projects : PublishedContentModel
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "projects";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public Projects(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Projects, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Category Name
		///</summary>
		[ImplementPropertyType("categoryName")]
		public string CategoryName
		{
			get { return this.GetPropertyValue<string>("categoryName"); }
		}

		///<summary>
		/// Category Preview
		///</summary>
		[ImplementPropertyType("categoryPreview")]
		public IPublishedContent CategoryPreview
		{
			get { return this.GetPropertyValue<IPublishedContent>("categoryPreview"); }
		}
	}

	/// <summary>Hospitality</summary>
	[PublishedContentModel("hospitality")]
	public partial class Hospitality : Projects, ICSshelpers
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "hospitality";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public Hospitality(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Hospitality, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Page Type
		///</summary>
		[ImplementPropertyType("pageType")]
		public string PageType
		{
			get { return Umbraco.Web.PublishedContentModels.CSshelpers.GetPageType(this); }
		}
	}

	/// <summary>Business</summary>
	[PublishedContentModel("business")]
	public partial class Business : Projects, ICSshelpers
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "business";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public Business(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Business, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Page Type
		///</summary>
		[ImplementPropertyType("pageType")]
		public string PageType
		{
			get { return Umbraco.Web.PublishedContentModels.CSshelpers.GetPageType(this); }
		}
	}

	/// <summary>Homespace</summary>
	[PublishedContentModel("homespace")]
	public partial class Homespace : Projects, ICSshelpers
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "homespace";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public Homespace(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Homespace, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Page Type
		///</summary>
		[ImplementPropertyType("pageType")]
		public string PageType
		{
			get { return Umbraco.Web.PublishedContentModels.CSshelpers.GetPageType(this); }
		}
	}

	// Mixin content Type 1130 with alias "contentBase"
	/// <summary>Content Base</summary>
	public partial interface IContentBase : IPublishedContent
	{
		/// <summary>Page Title</summary>
		string PageTitle { get; }
	}

	/// <summary>Content Base</summary>
	[PublishedContentModel("contentBase")]
	public partial class ContentBase : PublishedContentModel, IContentBase
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "contentBase";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public ContentBase(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<ContentBase, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Page Title
		///</summary>
		[ImplementPropertyType("pageTitle")]
		public string PageTitle
		{
			get { return GetPageTitle(this); }
		}

		/// <summary>Static getter for Page Title</summary>
		public static string GetPageTitle(IContentBase that) { return that.GetPropertyValue<string>("pageTitle"); }
	}

	// Mixin content Type 1135 with alias "cSSHelpers"
	/// <summary>CSS Helpers</summary>
	public partial interface ICSshelpers : IPublishedContent
	{
		/// <summary>Page Type</summary>
		string PageType { get; }
	}

	/// <summary>CSS Helpers</summary>
	[PublishedContentModel("cSSHelpers")]
	public partial class CSshelpers : PublishedContentModel, ICSshelpers
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "cSSHelpers";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public CSshelpers(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<CSshelpers, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Page Type
		///</summary>
		[ImplementPropertyType("pageType")]
		public string PageType
		{
			get { return GetPageType(this); }
		}

		/// <summary>Static getter for Page Type</summary>
		public static string GetPageType(ICSshelpers that) { return that.GetPropertyValue<string>("pageType"); }
	}

	/// <summary>Project</summary>
	[PublishedContentModel("project")]
	public partial class Project : PublishedContentModel, ICSshelpers
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "project";
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
#pragma warning restore 0109

		public Project(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Project, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Project Description
		///</summary>
		[ImplementPropertyType("projectDescription")]
		public IHtmlString ProjectDescription
		{
			get { return this.GetPropertyValue<IHtmlString>("projectDescription"); }
		}

		///<summary>
		/// Project Multimedias
		///</summary>
		[ImplementPropertyType("projectMultimedias")]
		public IEnumerable<IPublishedContent> ProjectMultimedias
		{
			get { return this.GetPropertyValue<IEnumerable<IPublishedContent>>("projectMultimedias"); }
		}

		///<summary>
		/// Project Name
		///</summary>
		[ImplementPropertyType("projectName")]
		public string ProjectName
		{
			get { return this.GetPropertyValue<string>("projectName"); }
		}

		///<summary>
		/// Project Subtitle
		///</summary>
		[ImplementPropertyType("projectSubtitle")]
		public string ProjectSubtitle
		{
			get { return this.GetPropertyValue<string>("projectSubtitle"); }
		}

		///<summary>
		/// Page Type
		///</summary>
		[ImplementPropertyType("pageType")]
		public string PageType
		{
			get { return Umbraco.Web.PublishedContentModels.CSshelpers.GetPageType(this); }
		}
	}

	/// <summary>Folder</summary>
	[PublishedContentModel("Folder")]
	public partial class Folder : PublishedContentModel
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "Folder";
		public new const PublishedItemType ModelItemType = PublishedItemType.Media;
#pragma warning restore 0109

		public Folder(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Folder, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Contents:
		///</summary>
		[ImplementPropertyType("contents")]
		public object Contents
		{
			get { return this.GetPropertyValue("contents"); }
		}
	}

	/// <summary>Image</summary>
	[PublishedContentModel("Image")]
	public partial class Image : PublishedContentModel
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "Image";
		public new const PublishedItemType ModelItemType = PublishedItemType.Media;
#pragma warning restore 0109

		public Image(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Image, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Size
		///</summary>
		[ImplementPropertyType("umbracoBytes")]
		public string UmbracoBytes
		{
			get { return this.GetPropertyValue<string>("umbracoBytes"); }
		}

		///<summary>
		/// Type
		///</summary>
		[ImplementPropertyType("umbracoExtension")]
		public string UmbracoExtension
		{
			get { return this.GetPropertyValue<string>("umbracoExtension"); }
		}

		///<summary>
		/// Upload image
		///</summary>
		[ImplementPropertyType("umbracoFile")]
		public Umbraco.Web.Models.ImageCropDataSet UmbracoFile
		{
			get { return this.GetPropertyValue<Umbraco.Web.Models.ImageCropDataSet>("umbracoFile"); }
		}

		///<summary>
		/// Height
		///</summary>
		[ImplementPropertyType("umbracoHeight")]
		public string UmbracoHeight
		{
			get { return this.GetPropertyValue<string>("umbracoHeight"); }
		}

		///<summary>
		/// Width
		///</summary>
		[ImplementPropertyType("umbracoWidth")]
		public string UmbracoWidth
		{
			get { return this.GetPropertyValue<string>("umbracoWidth"); }
		}
	}

	/// <summary>File</summary>
	[PublishedContentModel("File")]
	public partial class File : PublishedContentModel
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "File";
		public new const PublishedItemType ModelItemType = PublishedItemType.Media;
#pragma warning restore 0109

		public File(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<File, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Size
		///</summary>
		[ImplementPropertyType("umbracoBytes")]
		public string UmbracoBytes
		{
			get { return this.GetPropertyValue<string>("umbracoBytes"); }
		}

		///<summary>
		/// Type
		///</summary>
		[ImplementPropertyType("umbracoExtension")]
		public string UmbracoExtension
		{
			get { return this.GetPropertyValue<string>("umbracoExtension"); }
		}

		///<summary>
		/// Upload file
		///</summary>
		[ImplementPropertyType("umbracoFile")]
		public string UmbracoFile
		{
			get { return this.GetPropertyValue<string>("umbracoFile"); }
		}
	}

	/// <summary>Member</summary>
	[PublishedContentModel("Member")]
	public partial class Member : PublishedContentModel
	{
#pragma warning disable 0109 // new is redundant
		public new const string ModelTypeAlias = "Member";
		public new const PublishedItemType ModelItemType = PublishedItemType.Member;
#pragma warning restore 0109

		public Member(IPublishedContent content)
			: base(content)
		{ }

#pragma warning disable 0109 // new is redundant
		public new static PublishedContentType GetModelContentType()
		{
			return PublishedContentType.Get(ModelItemType, ModelTypeAlias);
		}
#pragma warning restore 0109

		public static PublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Member, TValue>> selector)
		{
			return PublishedContentModelUtility.GetModelPropertyType(GetModelContentType(), selector);
		}

		///<summary>
		/// Is Approved
		///</summary>
		[ImplementPropertyType("umbracoMemberApproved")]
		public bool UmbracoMemberApproved
		{
			get { return this.GetPropertyValue<bool>("umbracoMemberApproved"); }
		}

		///<summary>
		/// Comments
		///</summary>
		[ImplementPropertyType("umbracoMemberComments")]
		public string UmbracoMemberComments
		{
			get { return this.GetPropertyValue<string>("umbracoMemberComments"); }
		}

		///<summary>
		/// Failed Password Attempts
		///</summary>
		[ImplementPropertyType("umbracoMemberFailedPasswordAttempts")]
		public string UmbracoMemberFailedPasswordAttempts
		{
			get { return this.GetPropertyValue<string>("umbracoMemberFailedPasswordAttempts"); }
		}

		///<summary>
		/// Last Lockout Date
		///</summary>
		[ImplementPropertyType("umbracoMemberLastLockoutDate")]
		public string UmbracoMemberLastLockoutDate
		{
			get { return this.GetPropertyValue<string>("umbracoMemberLastLockoutDate"); }
		}

		///<summary>
		/// Last Login Date
		///</summary>
		[ImplementPropertyType("umbracoMemberLastLogin")]
		public string UmbracoMemberLastLogin
		{
			get { return this.GetPropertyValue<string>("umbracoMemberLastLogin"); }
		}

		///<summary>
		/// Last Password Change Date
		///</summary>
		[ImplementPropertyType("umbracoMemberLastPasswordChangeDate")]
		public string UmbracoMemberLastPasswordChangeDate
		{
			get { return this.GetPropertyValue<string>("umbracoMemberLastPasswordChangeDate"); }
		}

		///<summary>
		/// Is Locked Out
		///</summary>
		[ImplementPropertyType("umbracoMemberLockedOut")]
		public bool UmbracoMemberLockedOut
		{
			get { return this.GetPropertyValue<bool>("umbracoMemberLockedOut"); }
		}

		///<summary>
		/// Password Answer
		///</summary>
		[ImplementPropertyType("umbracoMemberPasswordRetrievalAnswer")]
		public string UmbracoMemberPasswordRetrievalAnswer
		{
			get { return this.GetPropertyValue<string>("umbracoMemberPasswordRetrievalAnswer"); }
		}

		///<summary>
		/// Password Question
		///</summary>
		[ImplementPropertyType("umbracoMemberPasswordRetrievalQuestion")]
		public string UmbracoMemberPasswordRetrievalQuestion
		{
			get { return this.GetPropertyValue<string>("umbracoMemberPasswordRetrievalQuestion"); }
		}
	}

}



// EOF
