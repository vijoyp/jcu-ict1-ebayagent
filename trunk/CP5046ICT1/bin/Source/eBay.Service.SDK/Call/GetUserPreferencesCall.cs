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
	public class GetUserPreferencesCall : ApiCall
	{

		#region Constructors
		/// <summary>
		/// 
		/// </summary>
		public GetUserPreferencesCall()
		{
			ApiRequest = new GetUserPreferencesRequestType();
		}

		/// <summary>
		/// 
		/// </summary>
		/// <param name="ApiContext">The <see cref="ApiCall.ApiContext"/> for this API Call of type <see cref="ApiContext"/>.</param>
		public GetUserPreferencesCall(ApiContext ApiContext)
		{
			ApiRequest = new GetUserPreferencesRequestType();
			this.ApiContext = ApiContext;
		}
		#endregion

		#region Public Methods
		/// <summary>
		/// Retrieves the specified user preferences for the authenticated caller.
		/// </summary>
		/// 
		/// <param name="ShowBidderNoticePreferences">
		/// If included and set to true, the seller's preference for receiving contact
		/// information for unsuccessful bidders is returned in the response.
		/// </param>
		///
		/// <param name="ShowCombinedPaymentPreferences">
		/// If included and set to true, the seller's combined payment preferences are
		/// returned in the response.
		/// 
		/// <span class="tablenote"><strong>Note:</strong>
		/// The CombinedPaymentPreferences.CombinedPaymentOption field is the only
		/// preference that should be managed with the GetUserPreferences and
		/// SetUserPreferences calls. All other Combined Payment preferences should be
		/// managed with the SetDiscountProfiles and GetDiscountProfiles calls.
		/// </span>
		/// </param>
		///
		/// <param name="ShowCrossPromotionPreferences">
		/// This container should no longer be used as eBay Store Cross Promotions are no
		/// longer supported in the Trading API. This container will be removed from the
		/// Trading WSDL and API Call Reference docs in a future release.
		/// 
		/// If included and set to true, the seller's cross-promotion preferences are
		/// returned in the response. These preferences are only applicable for eBay
		/// Store owners.
		/// </param>
		///
		/// <param name="ShowSellerPaymentPreferences">
		/// If included and set to true, the seller's payment preferences are returned
		/// in the response.
		/// </param>
		///
		/// <param name="ShowEndOfAuctionEmailPreferences">
		/// If included and set to true, the seller's preferences for the end-of-auction
		/// email sent to the winning bidder is returned in the response. These
		/// preferences are only applicable for auction listings.
		/// </param>
		///
		/// <param name="ShowSellerFavoriteItemPreferences">
		/// If included and set to true, the seller's favorite item preferences are
		/// returned in the response.
		/// </param>
		///
		/// <param name="ShowProStoresPreferences">
		/// If included and set to true, the seller's ProStores preferences are
		/// returned in the response.
		/// </param>
		///
		/// <param name="ShowEmailShipmentTrackingNumberPreference">
		/// If included and set to true, the seller's preference for sending an email to
		/// the buyer with the shipping tracking number is returned in the response.
		/// </param>
		///
		/// <param name="ShowRequiredShipPhoneNumberPreference">
		/// If included and set to true, the seller's preference for requiring that the
		/// buyer supply a shipping phone number upon checkout is returned in the
		/// response. Some shipping carriers require the receiver's phone number.
		/// </param>
		///
		/// <param name="ShowSellerExcludeShipToLocationPreference">
		/// If included and set to true, all of the seller's excluded shipping locations
		/// are returned in the response. The returned list mirrors the seller's current
		/// Exclude shipping locations list in My eBay's Shipping Preferences. An
		/// excluded shipping location in My eBay can be an entire geographical region
		/// (such as Middle East) or only an individual country (such as Iraq). Sellers
		/// can override these default settings for an individual listing by using the
		/// Item.ShippingDetails.ExcludeShipToLocation field in the AddItem family of
		/// calls.
		/// </param>
		///
		/// <param name="ShowUnpaidItemAssistancePreference">
		/// If included and set to true, the seller's Unpaid Item Assistant preferences
		/// are returned in the response. The Unpaid Item Assistant automatically opens
		/// an Unpaid Item dispute on the behalf of the seller.
		/// 
		/// <span class="tablenote"><strong>Note:</strong>
		/// To return the list of buyers excluded from the Unpaid Item Assistant
		/// mechanism, the ShowUnpaidItemAssistanceExclusionList field must also be
		/// included and set to true in the request. Excluded buyers can be viewed in
		/// the UnpaidItemAssistancePreferences.ExcludedUser field.
		/// </span>
		/// </param>
		///
		/// <param name="ShowPurchaseReminderEmailPreferences">
		/// If included and set to true, the seller's preference for sending a purchase
		/// reminder email to buyers is returned in the response.
		/// </param>
		///
		/// <param name="ShowUnpaidItemAssistanceExclusionList">
		/// If included and set to true, the list of eBay user IDs on the Unpaid Item
		/// Assistant Excluded User list is returned through the
		/// UnpaidItemAssistancePreferences.ExcludedUser field in the response. For
		/// excluded users, an Unpaid Item dispute is not automatically filed through
		/// the UPI Assistance mechanism. The Excluded User list is managed through the
		/// SetUserPreferences call.
		/// 
		/// <span class="tablenote"><strong>Note:</strong>
		/// To return the list of buyers excluded from the Unpaid Item Assistant
		/// mechanism, the ShowUnpaidItemAssistancePreference field must also be
		/// included and set to true in the request.
		/// </span>
		/// </param>
		///
		/// <param name="ShowSellerProfilePreferences">
		/// If this flag is included and set to true, the seller's Business Policies profile information is
		/// returned in the response. This information includes a flag that indicates whether or
		/// not the seller has opted into Business Policies, as well as Business Policies profiles
		/// (payment, shipping, and return policy) active on the seller's account.
		/// 
		/// <span class="tablenote"><strong>Note:</strong>
		/// Business Policies are not yet available for use on the eBay platform.
		/// </span>
		/// </param>
		///
		/// <param name="ShowSellerReturnPreferences">
		/// If this flag is included and set to true, the seller's eBay Return Center
		/// preference information will be returned.
		/// 
		/// eBay managed returns are currently only available on the US site. The eBay
		/// Return Center pilot launched on July 10, 2012. The eBay Return Center full
		/// launch is scheduled for early August 2012.
		/// </param>
		///
		/// <param name="ShowGlobalShippingProgramPreference">
		/// If this flag is included and set to true, the seller's preference for offering the Global Shipping Program to international buyers will be returned in <strong>OfferGlobalShippingProgramPreference</strong>.
		/// </param>
		///
		public BidderNoticePreferencesType GetUserPreferences(bool ShowBidderNoticePreferences, bool ShowCombinedPaymentPreferences, bool ShowCrossPromotionPreferences, bool ShowSellerPaymentPreferences, bool ShowEndOfAuctionEmailPreferences, bool ShowSellerFavoriteItemPreferences, bool ShowProStoresPreferences, bool ShowEmailShipmentTrackingNumberPreference, bool ShowRequiredShipPhoneNumberPreference, bool ShowSellerExcludeShipToLocationPreference, bool ShowUnpaidItemAssistancePreference, bool ShowPurchaseReminderEmailPreferences, bool ShowUnpaidItemAssistanceExclusionList, bool ShowSellerProfilePreferences, bool ShowSellerReturnPreferences, bool ShowGlobalShippingProgramPreference)
		{
			this.ShowBidderNoticePreferences = ShowBidderNoticePreferences;
			this.ShowCombinedPaymentPreferences = ShowCombinedPaymentPreferences;
			this.ShowCrossPromotionPreferences = ShowCrossPromotionPreferences;
			this.ShowSellerPaymentPreferences = ShowSellerPaymentPreferences;
			this.ShowEndOfAuctionEmailPreferences = ShowEndOfAuctionEmailPreferences;
			this.ShowSellerFavoriteItemPreferences = ShowSellerFavoriteItemPreferences;
			this.ShowProStoresPreferences = ShowProStoresPreferences;
			this.ShowEmailShipmentTrackingNumberPreference = ShowEmailShipmentTrackingNumberPreference;
			this.ShowRequiredShipPhoneNumberPreference = ShowRequiredShipPhoneNumberPreference;
			this.ShowSellerExcludeShipToLocationPreference = ShowSellerExcludeShipToLocationPreference;
			this.ShowUnpaidItemAssistancePreference = ShowUnpaidItemAssistancePreference;
			this.ShowPurchaseReminderEmailPreferences = ShowPurchaseReminderEmailPreferences;
			this.ShowUnpaidItemAssistanceExclusionList = ShowUnpaidItemAssistanceExclusionList;
			this.ShowSellerProfilePreferences = ShowSellerProfilePreferences;
			this.ShowSellerReturnPreferences = ShowSellerReturnPreferences;
			this.ShowGlobalShippingProgramPreference = ShowGlobalShippingProgramPreference;

			Execute();
			return ApiResponse.BidderNoticePreferences;
		}


		/// <summary>
		/// For backward compatibility with old wrappers.
		/// </summary>
		public void GetUserPreferences(bool ShowBidderNoticePreferences, bool ShowCombinedPaymentPreferences, bool ShowCrossPromotionPreferences, bool ShowSellerPaymentPreferences, bool ShowSellerFavoriteItemPreferences)
		{
			this.ShowBidderNoticePreferences = ShowBidderNoticePreferences;
			this.ShowCombinedPaymentPreferences = ShowCombinedPaymentPreferences;
			this.ShowCrossPromotionPreferences = ShowCrossPromotionPreferences;
			this.ShowSellerPaymentPreferences = ShowSellerPaymentPreferences;
			this.ShowSellerFavoriteItemPreferences = ShowSellerFavoriteItemPreferences;
			Execute();
		}
		/// <summary>
		/// For backward compatibility with old wrappers.
		/// </summary>
		public BidderNoticePreferencesType GetUserPreferences(bool ShowBidderNoticePreferences, bool ShowCombinedPaymentPreferences, bool ShowCrossPromotionPreferences, bool ShowSellerPaymentPreferences, bool ShowEndOfAuctionEmailPreferences, bool ShowSellerFavoriteItemPreferences)
		{
			this.ShowBidderNoticePreferences = ShowBidderNoticePreferences;
			this.ShowCombinedPaymentPreferences = ShowCombinedPaymentPreferences;
			this.ShowCrossPromotionPreferences = ShowCrossPromotionPreferences;
			this.ShowSellerPaymentPreferences = ShowSellerPaymentPreferences;
			this.ShowEndOfAuctionEmailPreferences = ShowEndOfAuctionEmailPreferences;
			this.ShowSellerFavoriteItemPreferences = ShowSellerFavoriteItemPreferences;

			Execute();
			return ApiResponse.BidderNoticePreferences;
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
		/// Gets or sets the <see cref="GetUserPreferencesRequestType"/> for this API call.
		/// </summary>
		public GetUserPreferencesRequestType ApiRequest
		{ 
			get { return (GetUserPreferencesRequestType) AbstractRequest; }
			set { AbstractRequest = value; }
		}

		/// <summary>
		/// Gets the <see cref="GetUserPreferencesResponseType"/> for this API call.
		/// </summary>
		public GetUserPreferencesResponseType ApiResponse
		{ 
			get { return (GetUserPreferencesResponseType) AbstractResponse; }
		}

		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowBidderNoticePreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowBidderNoticePreferences
		{ 
			get { return ApiRequest.ShowBidderNoticePreferences; }
			set { ApiRequest.ShowBidderNoticePreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowCombinedPaymentPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowCombinedPaymentPreferences
		{ 
			get { return ApiRequest.ShowCombinedPaymentPreferences; }
			set { ApiRequest.ShowCombinedPaymentPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowCrossPromotionPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowCrossPromotionPreferences
		{ 
			get { return ApiRequest.ShowCrossPromotionPreferences; }
			set { ApiRequest.ShowCrossPromotionPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowSellerPaymentPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowSellerPaymentPreferences
		{ 
			get { return ApiRequest.ShowSellerPaymentPreferences; }
			set { ApiRequest.ShowSellerPaymentPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowEndOfAuctionEmailPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowEndOfAuctionEmailPreferences
		{ 
			get { return ApiRequest.ShowEndOfAuctionEmailPreferences; }
			set { ApiRequest.ShowEndOfAuctionEmailPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowSellerFavoriteItemPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowSellerFavoriteItemPreferences
		{ 
			get { return ApiRequest.ShowSellerFavoriteItemPreferences; }
			set { ApiRequest.ShowSellerFavoriteItemPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowProStoresPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowProStoresPreferences
		{ 
			get { return ApiRequest.ShowProStoresPreferences; }
			set { ApiRequest.ShowProStoresPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowEmailShipmentTrackingNumberPreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowEmailShipmentTrackingNumberPreference
		{ 
			get { return ApiRequest.ShowEmailShipmentTrackingNumberPreference; }
			set { ApiRequest.ShowEmailShipmentTrackingNumberPreference = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowRequiredShipPhoneNumberPreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowRequiredShipPhoneNumberPreference
		{ 
			get { return ApiRequest.ShowRequiredShipPhoneNumberPreference; }
			set { ApiRequest.ShowRequiredShipPhoneNumberPreference = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowSellerExcludeShipToLocationPreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowSellerExcludeShipToLocationPreference
		{ 
			get { return ApiRequest.ShowSellerExcludeShipToLocationPreference; }
			set { ApiRequest.ShowSellerExcludeShipToLocationPreference = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowUnpaidItemAssistancePreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowUnpaidItemAssistancePreference
		{ 
			get { return ApiRequest.ShowUnpaidItemAssistancePreference; }
			set { ApiRequest.ShowUnpaidItemAssistancePreference = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowPurchaseReminderEmailPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowPurchaseReminderEmailPreferences
		{ 
			get { return ApiRequest.ShowPurchaseReminderEmailPreferences; }
			set { ApiRequest.ShowPurchaseReminderEmailPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowUnpaidItemAssistanceExclusionList"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowUnpaidItemAssistanceExclusionList
		{ 
			get { return ApiRequest.ShowUnpaidItemAssistanceExclusionList; }
			set { ApiRequest.ShowUnpaidItemAssistanceExclusionList = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowSellerProfilePreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowSellerProfilePreferences
		{ 
			get { return ApiRequest.ShowSellerProfilePreferences; }
			set { ApiRequest.ShowSellerProfilePreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowSellerReturnPreferences"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowSellerReturnPreferences
		{ 
			get { return ApiRequest.ShowSellerReturnPreferences; }
			set { ApiRequest.ShowSellerReturnPreferences = value; }
		}
		
 		/// <summary>
		/// Gets or sets the <see cref="GetUserPreferencesRequestType.ShowGlobalShippingProgramPreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool ShowGlobalShippingProgramPreference
		{ 
			get { return ApiRequest.ShowGlobalShippingProgramPreference; }
			set { ApiRequest.ShowGlobalShippingProgramPreference = value; }
		}
		
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.BidderNoticePreferences"/> of type <see cref="BidderNoticePreferencesType"/>.
		/// </summary>
		public BidderNoticePreferencesType BidderNoticePreferences
		{ 
			get { return ApiResponse.BidderNoticePreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.CombinedPaymentPreferences"/> of type <see cref="CombinedPaymentPreferencesType"/>.
		/// </summary>
		public CombinedPaymentPreferencesType CombinedPaymentPreferences
		{ 
			get { return ApiResponse.CombinedPaymentPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.CrossPromotionPreferences"/> of type <see cref="CrossPromotionPreferencesType"/>.
		/// </summary>
		public CrossPromotionPreferencesType CrossPromotionPreferences
		{ 
			get { return ApiResponse.CrossPromotionPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.SellerPaymentPreferences"/> of type <see cref="SellerPaymentPreferencesType"/>.
		/// </summary>
		public SellerPaymentPreferencesType SellerPaymentPreferences
		{ 
			get { return ApiResponse.SellerPaymentPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.SellerFavoriteItemPreferences"/> of type <see cref="SellerFavoriteItemPreferencesType"/>.
		/// </summary>
		public SellerFavoriteItemPreferencesType SellerFavoriteItemPreferences
		{ 
			get { return ApiResponse.SellerFavoriteItemPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.EndOfAuctionEmailPreferences"/> of type <see cref="EndOfAuctionEmailPreferencesType"/>.
		/// </summary>
		public EndOfAuctionEmailPreferencesType EndOfAuctionEmailPreferences
		{ 
			get { return ApiResponse.EndOfAuctionEmailPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.EmailShipmentTrackingNumberPreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool EmailShipmentTrackingNumberPreference
		{ 
			get { return ApiResponse.EmailShipmentTrackingNumberPreference; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.RequiredShipPhoneNumberPreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool RequiredShipPhoneNumberPreference
		{ 
			get { return ApiResponse.RequiredShipPhoneNumberPreference; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.ProStoresPreference"/> of type <see cref="ProStoresCheckoutPreferenceType"/>.
		/// </summary>
		public ProStoresCheckoutPreferenceType ProStoresPreference
		{ 
			get { return ApiResponse.ProStoresPreference; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.UnpaidItemAssistancePreferences"/> of type <see cref="UnpaidItemAssistancePreferencesType"/>.
		/// </summary>
		public UnpaidItemAssistancePreferencesType UnpaidItemAssistancePreferences
		{ 
			get { return ApiResponse.UnpaidItemAssistancePreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.SellerExcludeShipToLocationPreferences"/> of type <see cref="SellerExcludeShipToLocationPreferencesType"/>.
		/// </summary>
		public SellerExcludeShipToLocationPreferencesType SellerExcludeShipToLocationPreferences
		{ 
			get { return ApiResponse.SellerExcludeShipToLocationPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.PurchaseReminderEmailPreferences"/> of type <see cref="PurchaseReminderEmailPreferencesType"/>.
		/// </summary>
		public PurchaseReminderEmailPreferencesType PurchaseReminderEmailPreferences
		{ 
			get { return ApiResponse.PurchaseReminderEmailPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.SellerThirdPartyCheckoutDisabled"/> of type <see cref="bool"/>.
		/// </summary>
		public bool SellerThirdPartyCheckoutDisabled
		{ 
			get { return ApiResponse.SellerThirdPartyCheckoutDisabled; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.SellerProfilePreferences"/> of type <see cref="SellerProfilePreferencesType"/>.
		/// </summary>
		public SellerProfilePreferencesType SellerProfilePreferences
		{ 
			get { return ApiResponse.SellerProfilePreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.SellerReturnPreferences"/> of type <see cref="SellerReturnPreferencesType"/>.
		/// </summary>
		public SellerReturnPreferencesType SellerReturnPreferences
		{ 
			get { return ApiResponse.SellerReturnPreferences; }
		}
		
 		/// <summary>
		/// Gets the returned <see cref="GetUserPreferencesResponseType.OfferGlobalShippingProgramPreference"/> of type <see cref="bool"/>.
		/// </summary>
		public bool OfferGlobalShippingProgramPreference
		{ 
			get { return ApiResponse.OfferGlobalShippingProgramPreference; }
		}
		

		#endregion

		
	}
}
