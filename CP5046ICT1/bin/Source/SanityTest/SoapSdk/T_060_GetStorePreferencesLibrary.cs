#region Copyright
//	Copyright (c) 2007 eBay, Inc.
//
//	This program is licensed under the terms of the eBay Common Development and 
//	Distribution License (CDDL) Version 1.0 (the "License") and any subsequent 
//	version thereof released by eBay.  The then-current version of the License 
//	can be found at https://www.codebase.ebay.com/Licenses.html and in the 
//	eBaySDKLicense file that is under the eBay SDK install directory.
#endregion

#region Namespaces
using System;
using NUnit.Framework;
using eBay.Service.Call;
using eBay.Service.Core.Soap;
using eBay.Service.Core.Sdk;
using eBay.Service.Util;
#endregion

namespace AllTestsSuite.T_100_StoreTestsSuite
{
	[TestFixture]
	public class T_060_GetStorePreferencesLibrary : SOAPTestBase
	{
		[Test]
		public void GetStorePreferences()
		{
			GetStorePreferencesCall api = new GetStorePreferencesCall(this.apiContext);
			// Make API call.
			api.Execute();
			TestData.StorePreferences = api.ApiResponse.StorePreferences;
			
		}
	}
}