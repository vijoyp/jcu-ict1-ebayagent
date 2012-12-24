#region Copyright
//	Copyright (c) 2008, 2009 eBay, Inc.
//
//	This program is licensed under the terms of the eBay Common Development and 
//	Distribution License (CDDL) Version 1.0 (the "License") and any subsequent 
//	version thereof released by eBay.  The then-current version of the License 
//	can be found at https://www.codebase.ebay.com/Licenses.html and in the 
//	eBaySDKLicense file that is under the eBay SDK install directory.
#endregion

#region Namespaces
using System;
using System.Runtime.InteropServices;
using eBay.Service.Core.Sdk;
using eBay.Service.Core.Soap;
using eBay.Service.EPS;
using eBay.Service.Util;
#endregion

namespace eBay.Service.Call
{

	/// <summary>
	/// 
	/// </summary>
	[ClassInterface(ClassInterfaceType.AutoDispatch)]
	public class GetProductFinderXSLCall : ApiCall
	{

		#region Constructors
		/// <summary>
		/// 
		/// </summary>
		public GetProductFinderXSLCall()
		{
			ApiRequest = new GetProductFinderXSLRequestType();
		}

		/// <summary>
		/// 
		/// </summary>
		/// <param name="ApiContext">The <see cref="ApiCall.ApiContext"/> for this API Call of type <see cref="ApiContext"/>.</param>
		public GetProductFinderXSLCall(ApiContext ApiContext)
		{
			ApiRequest = new GetProductFinderXSLRequestType();
			this.ApiContext = ApiContext;
		}
		#endregion

		#region Public Methods
		/// <summary>
		/// No longer recommended. This supports an older ID-based format for
		/// describing item specifics and product details.
		/// Most eBay categories no longer support ID-based attributes.
		/// The remaining categories (e.g., US eBay Motors) will drop support
		/// for ID-based attributes by May 2012.
		/// New applications should not use ID-based attributes.
		/// Existing applications should be updated to remove all dependencies
		/// on ID-based attributes now. Instead, use FindProducts in
		/// eBay's Shopping API to search for product details.
		/// 
		/// Retrieves the Product Finder XSL stylesheet. Apply the stylesheet
		/// to the XML returned from a call to GetProductFinder to render a
		/// form that lets a user form a multi-attribute query against eBay
		/// catalog data. See the Developer's Guide for an overview of Pre-
		/// filled Item Information and information on searching for catalog
		/// products.
		/// </summary>
		/// 
		/// <param name="FileName">
		/// The name of the XSL file to retrieve. If not specified, the call
		/// returns the latest versions of all available XSL files.
		/// Currently, this call only retrieves the product_finder.xsl file.
		/// FileName is an optional input.
		/// </param>
		///
		/// <param name="FileVersion">
		/// The desired version of the XSL file. Required if FileName is specified.
		/// If not specified, the call returns the latest versions of all
		/// available XSL files that could be returned by the call.
		/// (Currently, this call only retrieves the product_finder.xsl file.)
		/// This is not a filter for retrieving changes to the XSL file.
		/// </param>
		///
		public XSLFileTypeCollection GetProductFinderXSL(string FileName, string FileVersion)
		{
			this.FileName = FileName;
			this.FileVersion = FileVersion;

			Execute();
			return ApiResponse.XSLFile;
		}


 		/// <summary>
 		/// Call GetProductFinderXSLVersions to retrieve all product finder XSL files and their versions.
 		/// </summary>
 		/// <returns>The <see cref="XSLFileList"/> without FileContent.</returns>
 		public XSLFileTypeCollection GetProductFinderXSLVersions()
 		{
 			this.DetailLevelOverride = true;
 			Execute();
 			this.DetailLevelOverride = false;
 			return XSLFileList;
 		}

		/// <summary>
		/// For backward compatibility with old wrappers.
		/// </summary>
		public XSLFileTypeCollection GetProductFinderXSL()
		{
			Execute();
			return XSLFileList;
		}

		#endregion



		#region Static Methods
		/// <summary>
		/// Decodes and replaces the Base64 Encoded <see cref="XSLFileType.FileContent"/>.
		/// </summary>
		/// <param name="XSLFile">The XSL File to Decode.</param>
		public static void DecodeFileContent(XSLFileType XSLFile)
		{
			try
			{
				byte[] xslPBytes = System.Convert.FromBase64String(XSLFile.FileContent);
				XSLFile.FileContent = System.Text.Encoding.ASCII.GetString(xslPBytes, 0, xslPBytes.Length);
			} 
			catch (Exception ex)
			{
				throw new ApiException(ex.Message, ex);
			}
		}
		#endregion 

		#region Properties
		/// <summary>
		/// The base interface object.
		/// </summary>
		/// <remarks>This property is reserved for users who have difficulty querying multiple interfaces.</remarks>
		public ApiCall ApiCallBase
		{
			get { return this; }
		}

		/// <summary>
		/// Gets or sets the <see cref="GetProductFinderXSLRequestType"/> for this API call.
		/// </summary>
		public GetProductFinderXSLRequestType ApiRequest
		{ 
			get { return (GetProductFinderXSLRequestType) AbstractRequest; }
			set { AbstractRequest = value; }
		}

		/// <summary>
		/// Gets the <see cref="GetProductFinderXSLResponseType"/> for this API call.
		/// </summary>
		public GetProductFinderXSLResponseType ApiResponse
		{ 
			get { return (GetProductFinderXSLResponseType) AbstractResponse; }
		}

		
 		/// <summary>
		/// Gets or sets the <see cref="GetProductFinderXSLRequestType.FileName"/> of type <see cref="string"/>.
		/// </summary>
		public string FileName
		{ 
			get { return ApiRequest.FileName; }
			set { ApiRequest.FileName = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetProductFinderXSLRequestType.FileVersion"/> of type <see cref="string"/>.
		/// </summary>
		public string FileVersion
		{ 
			get { return ApiRequest.FileVersion; }
			set { ApiRequest.FileVersion = value; }
		}
		
		
 		/// <summary>
		/// Gets the returned <see cref="GetProductFinderXSLResponseType.XSLFile"/> of type <see cref="XSLFileTypeCollection"/>.
		/// </summary>
		public XSLFileTypeCollection XSLFileList
		{ 
			get { return ApiResponse.XSLFile; }
		}
		

		#endregion

		
	}
}
