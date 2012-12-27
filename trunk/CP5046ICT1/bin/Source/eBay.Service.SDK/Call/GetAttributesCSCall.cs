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
	public class GetAttributesCSCall : ApiCall
	{

		#region Constructors
		/// <summary>
		/// 
		/// </summary>
		public GetAttributesCSCall()
		{
			ApiRequest = new GetAttributesCSRequestType();
		}

		/// <summary>
		/// 
		/// </summary>
		/// <param name="ApiContext">The <see cref="ApiCall.ApiContext"/> for this API Call of type <see cref="ApiContext"/>.</param>
		public GetAttributesCSCall(ApiContext ApiContext)
		{
			ApiRequest = new GetAttributesCSRequestType();
			this.ApiContext = ApiContext;
		}
		#endregion

		#region Public Methods
		/// <summary>
		/// No longer recommended. This is an older format for describing
		/// item specifics using an ID-based model.
		/// Most eBay categories no longer support ID-based attributes.
		/// The remaining categories (e.g., US eBay Motors) will drop support
		/// for ID-based attributes by May 2012.
		/// New applications should not use ID-based attributes.
		/// Existing applications should be updated to remove all dependencies
		/// on ID-based attributes now. Instead, use GetCategorySpecifics for the
		/// newer Custom Item Specifics model.
		/// 
		/// Retrieves an XML string that describes how to present Item
		/// Specifics to a seller who is creating a new listing.
		/// Use this information to present users with
		/// the equivalent of the Item Specifics portion of the eBay Title
		/// and Description pages and to validate selected eBay attributes on
		/// the client before including them in an AddItem call or related
		/// calls. The XML string contains a list of all the attributes that
		/// are applicable for one or more requested categories, along with
		/// related meta-data. The meta-data specifies all the possible
		/// values of each attribute, the logic for presenting the attributes
		/// to a user, and rules for validating the user's selections. 
		/// 
		/// See the eBay Web Services Guide for an overview of Item Specifics and
		/// details about the eBay attribute model.
		/// </summary>
		/// 
		/// <param name="AttributeVersion">
		/// A version of the Item Specifics definitions (attribute meta-data)
		/// for the site.
		/// Typically, an application passes the version value that was
		/// returned the last time the application executed this call.
		/// Filter that causes the call to return only the characteristic sets
		/// for which the attribute meta-data has changed since the specified
		/// version. If not specified, all characteristics sets are returned.
		/// The latest version value is not necessarily greater than the
		/// previous value that was returned. Therefore, when comparing
		/// versions, only compare whether the value has changed.
		/// </param>
		///
		/// <param name="AttributeSetIDList">
		/// An array of characteristic setIDs (which always correspond to
		/// attribute set IDs).
		/// Each characteristic setcorresponds to a level in the eBay
		/// category hierarchy at
		/// which all items share common characteristics.
		/// Multiple categories can be mapped to the same characteristic set.
		/// AttributeSetIDs is an optional input. When IDs are specified,
		/// the call only returns meta-data for the corresponding
		/// characteristic sets.
		/// When no IDs are specified, the call returns all the current
		/// attribute meta-data in the system.
		/// </param>
		///
		/// <param name="IncludeCategoryMappingDetails">
		/// If true, includes a list of CategoryMapping nodes in the response.
		/// Each CategoryMapping node specifies category information as well as
		/// attributes and values that your application can auto-fill for
		/// items listed in that category. See the eBay Web Services Guide for more
		/// information about options for maintaining category data and
		/// auto-filling Item Specifics.
		/// </param>
		///
		public string GetAttributesCS(string AttributeVersion, Int32Collection AttributeSetIDList, bool IncludeCategoryMappingDetails)
		{
			this.AttributeVersion = AttributeVersion;
			this.AttributeSetIDList = AttributeSetIDList;
			this.IncludeCategoryMappingDetails = IncludeCategoryMappingDetails;

			Execute();
			return ApiResponse.AttributeSystemVersion;
		}

 		/// <summary>
 		/// Call GetAttributesCSVersion to retrive the current version number of AttributesCS.
 		/// </summary>
 		/// <returns>The <see cref="GetAttributesCSResponseType.AttributeSystemVersion"/>.</returns>
 		public string GetAttributesCSVersion()
 		{
 			this.DetailLevelOverride = true;
 			Execute();
 			this.DetailLevelOverride = false;
 			return AttributeVersionResult;
 		}	

		/// <summary>
		/// For backward compatibility with old wrappers.
		/// </summary>
		public string GetAttributesCS()
		{
			Execute();
			return AttributeData;
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
		/// Gets or sets the <see cref="GetAttributesCSRequestType"/> for this API call.
		/// </summary>
		public GetAttributesCSRequestType ApiRequest
		{ 
			get { return (GetAttributesCSRequestType) AbstractRequest; }
			set { AbstractRequest = value; }
		}

		/// <summary>
		/// Gets the <see cref="GetAttributesCSResponseType"/> for this API call.
		/// </summary>
		public GetAttributesCSResponseType ApiResponse
		{ 
			get { return (GetAttributesCSResponseType) AbstractResponse; }
		}

		
 		/// <summary>
		/// Gets or sets the <see cref="GetAttributesCSRequestType.AttributeSystemVersion"/> of type <see cref="string"/>.
		/// </summary>
		public string AttributeVersion
		{ 
			get { return ApiRequest.AttributeSystemVersion; }
			set { ApiRequest.AttributeSystemVersion = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetAttributesCSRequestType.AttributeSetID"/> of type <see cref="Int32Collection"/>.
		/// </summary>
		public Int32Collection AttributeSetIDList
		{ 
			get { return ApiRequest.AttributeSetID; }
			set { ApiRequest.AttributeSetID = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetAttributesCSRequestType.IncludeCategoryMappingDetails"/> of type <see cref="bool"/>.
		/// </summary>
		public bool IncludeCategoryMappingDetails
		{ 
			get { return ApiRequest.IncludeCategoryMappingDetails; }
			set { ApiRequest.IncludeCategoryMappingDetails = value; }
		}
		
		
 		/// <summary>
		/// Gets the returned <see cref="GetAttributesCSResponseType.AttributeData"/> of type <see cref="string"/>.
		/// </summary>
		public string AttributeData
		{ 
			get { return ApiResponse.AttributeData; }
		}
		
		/// <summary>
		/// 
		/// </summary>
		public string AttributeVersionResult
		{ 
			get { return ApiResponse.AttributeSystemVersion; }
		}

		#endregion

		
	}
}