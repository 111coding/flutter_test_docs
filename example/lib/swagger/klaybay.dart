import 'package:freezed_annotation/freezed_annotation.dart';

part 'map.freezed.dart';
part 'map.g.dart';

@freezed
abstract class Map with _$Map {
  const factory Map({
    
  }) = _Map;

  factory Map.fromJson(Map<String, dynamic> json) => _$MapFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_company_dto.freezed.dart';
part 'create_company_dto.g.dart';

@freezed
abstract class CreateCompanyDto with _$CreateCompanyDto {
  const factory CreateCompanyDto({
    required String id,
required String manager,
String? image,
String? banner,
required Map<String,String> name,
Map<String,String>? description,
  }) = _CreateCompanyDto;

  factory CreateCompanyDto.fromJson(Map<String, dynamic> json) => _$CreateCompanyDtoFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_meta.freezed.dart';
part 'paginated_meta.g.dart';

@freezed
abstract class PaginatedMeta with _$PaginatedMeta {
  const factory PaginatedMeta({
    required int itemsperpage,
required int currentpage,
required dynamic sortby,
required List<array> searchby,
required String search,
dynamic? filter,
  }) = _PaginatedMeta;

  factory PaginatedMeta.fromJson(Map<String, dynamic> json) => _$PaginatedMetaFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_links.freezed.dart';
part 'paginated_links.g.dart';

@freezed
abstract class PaginatedLinks with _$PaginatedLinks {
  const factory PaginatedLinks({
    String? first,
String? previous,
String? current,
String? next,
String? last,
  }) = _PaginatedLinks;

  factory PaginatedLinks.fromJson(Map<String, dynamic> json) => _$PaginatedLinksFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated.freezed.dart';
part 'paginated.g.dart';

@freezed
abstract class Paginated with _$Paginated {
  const factory Paginated({
    required PaginatedMeta meta,
required PaginatedLinks links,
  }) = _Paginated;

  factory Paginated.fromJson(Map<String, dynamic> json) => _$PaginatedFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_meta_with_total.freezed.dart';
part 'paginated_meta_with_total.g.dart';

@freezed
abstract class PaginatedMetaWithTotal with _$PaginatedMetaWithTotal {
  const factory PaginatedMetaWithTotal({
    required int itemsperpage,
required int currentpage,
required dynamic sortby,
required List<array> searchby,
required String search,
dynamic? filter,
required int totalitems,
required int totalpages,
  }) = _PaginatedMetaWithTotal;

  factory PaginatedMetaWithTotal.fromJson(Map<String, dynamic> json) => _$PaginatedMetaWithTotalFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_with_total.freezed.dart';
part 'paginated_with_total.g.dart';

@freezed
abstract class PaginatedWithTotal with _$PaginatedWithTotal {
  const factory PaginatedWithTotal({
    required PaginatedMetaWithTotal meta,
required PaginatedLinks links,
  }) = _PaginatedWithTotal;

  factory PaginatedWithTotal.fromJson(Map<String, dynamic> json) => _$PaginatedWithTotalFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_link.freezed.dart';
part 'game_link.g.dart';

@freezed
abstract class GameLink with _$GameLink {
  const factory GameLink({
    required String type,
required String url,
  }) = _GameLink;

  factory GameLink.fromJson(Map<String, dynamic> json) => _$GameLinkFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    required String address,
String? name,
String? email,
@JsonKey(name: "profile_image") String? profileImage,
@JsonKey(name: "banner_image") String? bannerImage,
String? twitter,
String? instagram,
String? site,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    required String id,
required String manager,
required Map<String,String> name,
String? image,
String? banner,
required Map<String,String> description,
@JsonKey(name: "manager_account") Account? managerAccount,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
abstract class Game with _$Game {
  const factory Game({
    required String id,
@JsonKey(name: "company_id") String? companyId,
String? manager,
required Map<String,String> name,
String? image,
String? banner,
required Map<String,String> description,
@JsonKey(name: "vol_2_4h") String? vol24h,
@JsonKey(name: "vol_2_4h_rate") int? vol24hRate,
@JsonKey(name: "total_vol") String? totalVol,
@JsonKey(name: "floor_price") String? floorPrice,
@JsonKey(name: "owner_count") required int ownerCount,
@JsonKey(name: "item_count") required int itemCount,
GameLink? links,
Company? company,
@JsonKey(name: "manager_account") Account? managerAccount,
required String status,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_string_attribute_stat.freezed.dart';
part 'item_string_attribute_stat.g.dart';

@freezed
abstract class ItemStringAttributeStat with _$ItemStringAttributeStat {
  const factory ItemStringAttributeStat({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int count,
required String value,
  }) = _ItemStringAttributeStat;

  factory ItemStringAttributeStat.fromJson(Map<String, dynamic> json) => _$ItemStringAttributeStatFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_number_attribute_stat.freezed.dart';
part 'item_number_attribute_stat.g.dart';

@freezed
abstract class ItemNumberAttributeStat with _$ItemNumberAttributeStat {
  const factory ItemNumberAttributeStat({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int count,
@JsonKey(name: "min_value") required int minValue,
@JsonKey(name: "max_value") required int maxValue,
  }) = _ItemNumberAttributeStat;

  factory ItemNumberAttributeStat.fromJson(Map<String, dynamic> json) => _$ItemNumberAttributeStatFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_boost_percentage_attribute_stat.freezed.dart';
part 'item_boost_percentage_attribute_stat.g.dart';

@freezed
abstract class ItemBoostPercentageAttributeStat with _$ItemBoostPercentageAttributeStat {
  const factory ItemBoostPercentageAttributeStat({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int count,
@JsonKey(name: "min_value") required int minValue,
@JsonKey(name: "max_value") required int maxValue,
  }) = _ItemBoostPercentageAttributeStat;

  factory ItemBoostPercentageAttributeStat.fromJson(Map<String, dynamic> json) => _$ItemBoostPercentageAttributeStatFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_boost_number_attribute_stat.freezed.dart';
part 'item_boost_number_attribute_stat.g.dart';

@freezed
abstract class ItemBoostNumberAttributeStat with _$ItemBoostNumberAttributeStat {
  const factory ItemBoostNumberAttributeStat({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int count,
@JsonKey(name: "min_value") required int minValue,
@JsonKey(name: "max_value") required int maxValue,
  }) = _ItemBoostNumberAttributeStat;

  factory ItemBoostNumberAttributeStat.fromJson(Map<String, dynamic> json) => _$ItemBoostNumberAttributeStatFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_date_attribute_stat.freezed.dart';
part 'item_date_attribute_stat.g.dart';

@freezed
abstract class ItemDateAttributeStat with _$ItemDateAttributeStat {
  const factory ItemDateAttributeStat({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int count,
required int value,
  }) = _ItemDateAttributeStat;

  factory ItemDateAttributeStat.fromJson(Map<String, dynamic> json) => _$ItemDateAttributeStatFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_contract.freezed.dart';
part 'item_contract.g.dart';

@freezed
abstract class ItemContract with _$ItemContract {
  const factory ItemContract({
    required String address,
@JsonKey(name: "game_id") String? gameId,
required String name,
required String schema,
String? description,
String? image,
@JsonKey(name: "external_link") String? externalLink,
@JsonKey(name: "klaybay_buyer_fee_basis_points") required int klaybayBuyerFeeBasisPoints,
@JsonKey(name: "klaybay_seller_fee_basis_points") required int klaybaySellerFeeBasisPoints,
@JsonKey(name: "dev_buyer_fee_basis_points") required int devBuyerFeeBasisPoints,
@JsonKey(name: "dev_seller_fee_basis_points") required int devSellerFeeBasisPoints,
@JsonKey(name: "item_attribute_stats") List? itemAttributeStats,
Game? game,
@JsonKey(name: "min_listing_price") String? minListingPrice,
@JsonKey(name: "max_listing_price") String? maxListingPrice,
@JsonKey(name: "min_sale_price") String? minSalePrice,
@JsonKey(name: "max_sale_price") String? maxSalePrice,
required String status,
  }) = _ItemContract;

  factory ItemContract.fromJson(Map<String, dynamic> json) => _$ItemContractFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_detail.freezed.dart';
part 'game_detail.g.dart';

@freezed
abstract class GameDetail with _$GameDetail {
  const factory GameDetail({
    required Game game,
@JsonKey(name: "item_contracts") required ItemContract itemContracts,
  }) = _GameDetail;

  factory GameDetail.fromJson(Map<String, dynamic> json) => _$GameDetailFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_metadata.freezed.dart';
part 'item_metadata.g.dart';

@freezed
abstract class ItemMetadata with _$ItemMetadata {
  const factory ItemMetadata({
    String? name,
String? description,
@JsonKey(name: "external_url") String? externalUrl,
@JsonKey(name: "animation_url") String? animationUrl,
@JsonKey(name: "youtube_url") String? youtubeUrl,
required List attributes,
  }) = _ItemMetadata;

  factory ItemMetadata.fromJson(Map<String, dynamic> json) => _$ItemMetadataFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_item_contract_dto.freezed.dart';
part 'register_item_contract_dto.g.dart';

@freezed
abstract class RegisterItemContractDto with _$RegisterItemContractDto {
  const factory RegisterItemContractDto({
    required String address,
@JsonKey(name: "game_id") String? gameId,
  }) = _RegisterItemContractDto;

  factory RegisterItemContractDto.fromJson(Map<String, dynamic> json) => _$RegisterItemContractDtoFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_event_entity.freezed.dart';
part 'chain_event_entity.g.dart';

@freezed
abstract class ChainEventEntity with _$ChainEventEntity {
  const factory ChainEventEntity({
    @JsonKey(name: "block_number") required String blockNumber,
@JsonKey(name: "log_index") required String logIndex,
required String address,
@JsonKey(name: "tx_hash") required String txHash,
required dynamic payload,
required String status,
required String log,
  }) = _ChainEventEntity;

  factory ChainEventEntity.fromJson(Map<String, dynamic> json) => _$ChainEventEntityFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_string_attribute.freezed.dart';
part 'item_string_attribute.g.dart';

@freezed
abstract class ItemStringAttribute with _$ItemStringAttribute {
  const factory ItemStringAttribute({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required String value,
  }) = _ItemStringAttribute;

  factory ItemStringAttribute.fromJson(Map<String, dynamic> json) => _$ItemStringAttributeFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_number_attribute.freezed.dart';
part 'item_number_attribute.g.dart';

@freezed
abstract class ItemNumberAttribute with _$ItemNumberAttribute {
  const factory ItemNumberAttribute({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int value,
@JsonKey(name: "max_value") int? maxValue,
  }) = _ItemNumberAttribute;

  factory ItemNumberAttribute.fromJson(Map<String, dynamic> json) => _$ItemNumberAttributeFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_boost_percentage_attribute.freezed.dart';
part 'item_boost_percentage_attribute.g.dart';

@freezed
abstract class ItemBoostPercentageAttribute with _$ItemBoostPercentageAttribute {
  const factory ItemBoostPercentageAttribute({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int value,
@JsonKey(name: "max_value") int? maxValue,
  }) = _ItemBoostPercentageAttribute;

  factory ItemBoostPercentageAttribute.fromJson(Map<String, dynamic> json) => _$ItemBoostPercentageAttributeFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_boost_number_attribute.freezed.dart';
part 'item_boost_number_attribute.g.dart';

@freezed
abstract class ItemBoostNumberAttribute with _$ItemBoostNumberAttribute {
  const factory ItemBoostNumberAttribute({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int value,
@JsonKey(name: "max_value") int? maxValue,
  }) = _ItemBoostNumberAttribute;

  factory ItemBoostNumberAttribute.fromJson(Map<String, dynamic> json) => _$ItemBoostNumberAttributeFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_date_attribute.freezed.dart';
part 'item_date_attribute.g.dart';

@freezed
abstract class ItemDateAttribute with _$ItemDateAttribute {
  const factory ItemDateAttribute({
    @JsonKey(name: "trait_type") required String traitType,
@JsonKey(name: "display_type") required String displayType,
required int value,
  }) = _ItemDateAttribute;

  factory ItemDateAttribute.fromJson(Map<String, dynamic> json) => _$ItemDateAttributeFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
abstract class Item with _$Item {
  const factory Item({
    required String id,
@JsonKey(name: "contract_address") required String contractAddress,
@JsonKey(name: "token_id") required String tokenId,
String? name,
String? description,
String? image,
String? thumbnail,
@JsonKey(name: "full_image") String? fullImage,
@JsonKey(name: "external_url") String? externalUrl,
@JsonKey(name: "animation_url") String? animationUrl,
@JsonKey(name: "youtube_url") String? youtubeUrl,
required String minter,
required List attributes,
ItemContract? contract,
@JsonKey(name: "minter_account") required Account minterAccount,
@JsonKey(name: "listing_price") String? listingPrice,
@JsonKey(name: "listing_time") int? listingTime,
@JsonKey(name: "expiration_time") int? expirationTime,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewer_info.freezed.dart';
part 'viewer_info.g.dart';

@freezed
abstract class ViewerInfo with _$ViewerInfo {
  const factory ViewerInfo({
    required Account account,
required bool owning,
@JsonKey(name: "sellable_count") int? sellableCount,
  }) = _ViewerInfo;

  factory ViewerInfo.fromJson(Map<String, dynamic> json) => _$ViewerInfoFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail.freezed.dart';
part 'item_detail.g.dart';

@freezed
abstract class ItemDetail with _$ItemDetail {
  const factory ItemDetail({
    required Item item,
Game? game,
required Order listings,
required Order offers,
@JsonKey(name: "owner_count") required int ownerCount,
@JsonKey(name: "owner_account") Account? ownerAccount,
@JsonKey(name: "viewer_info") ViewerInfo? viewerInfo,
  }) = _ItemDetail;

  factory ItemDetail.fromJson(Map<String, dynamic> json) => _$ItemDetailFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'username_validation.freezed.dart';
part 'username_validation.g.dart';

@freezed
abstract class UsernameValidation with _$UsernameValidation {
  const factory UsernameValidation({
    required String username,
required bool available,
required String reason,
  }) = _UsernameValidation;

  factory UsernameValidation.fromJson(Map<String, dynamic> json) => _$UsernameValidationFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_count_per_game.freezed.dart';
part 'item_count_per_game.g.dart';

@freezed
abstract class ItemCountPerGame with _$ItemCountPerGame {
  const factory ItemCountPerGame({
    @JsonKey(name: "game_id") required String gameId,
@JsonKey(name: "game_name") required Map<String,String> gameName,
@JsonKey(name: "item_count") required int itemCount,
  }) = _ItemCountPerGame;

  factory ItemCountPerGame.fromJson(Map<String, dynamic> json) => _$ItemCountPerGameFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_possession_status.freezed.dart';
part 'item_possession_status.g.dart';

@freezed
abstract class ItemPossessionStatus with _$ItemPossessionStatus {
  const factory ItemPossessionStatus({
    @JsonKey(name: "min_listing_price") String? minListingPrice,
@JsonKey(name: "max_listing_price") String? maxListingPrice,
required ItemCountPerGame games,
  }) = _ItemPossessionStatus;

  factory ItemPossessionStatus.fromJson(Map<String, dynamic> json) => _$ItemPossessionStatusFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_order_count.freezed.dart';
part 'game_order_count.g.dart';

@freezed
abstract class GameOrderCount with _$GameOrderCount {
  const factory GameOrderCount({
    @JsonKey(name: "game_id") required String gameId,
@JsonKey(name: "game_name") required Map<String,String> gameName,
@JsonKey(name: "order_count") required int orderCount,
  }) = _GameOrderCount;

  factory GameOrderCount.fromJson(Map<String, dynamic> json) => _$GameOrderCountFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    required Account account,
@JsonKey(name: "item_possession_status") required ItemPossessionStatus itemPossessionStatus,
@JsonKey(name: "min_listing_price") required String minListingPrice,
@JsonKey(name: "max_listing_price") required String maxListingPrice,
@JsonKey(name: "active_listing_counts") required GameOrderCount activeListingCounts,
@JsonKey(name: "inactive_listing_counts") required GameOrderCount inactiveListingCounts,
@JsonKey(name: "min_offer_price") required String minOfferPrice,
@JsonKey(name: "max_offer_price") required String maxOfferPrice,
@JsonKey(name: "made_offer_counts") required GameOrderCount madeOfferCounts,
@JsonKey(name: "received_offer_counts") required GameOrderCount receivedOfferCounts,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';
part 'api_exception.g.dart';

@freezed
abstract class ApiException with _$ApiException {
  const factory ApiException({
    required int statuscode,
String? errorcode,
required String message,
required String error,
dynamic? extra,
  }) = _ApiException;

  factory ApiException.fromJson(Map<String, dynamic> json) => _$ApiExceptionFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_account_dto.freezed.dart';
part 'update_account_dto.g.dart';

@freezed
abstract class UpdateAccountDto with _$UpdateAccountDto {
  const factory UpdateAccountDto({
    String? twitter,
String? instagram,
String? site,
String? name,
String? email,
  }) = _UpdateAccountDto;

  factory UpdateAccountDto.fromJson(Map<String, dynamic> json) => _$UpdateAccountDtoFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_dto.freezed.dart';
part 'create_order_dto.g.dart';

@freezed
abstract class CreateOrderDto with _$CreateOrderDto {
  const factory CreateOrderDto({
    required String hash,
required String exchange,
required String maker,
required String taker,
@JsonKey(name: "maker_relayer_fee") required String makerRelayerFee,
@JsonKey(name: "taker_relayer_fee") required String takerRelayerFee,
@JsonKey(name: "maker_protocol_fee") required String makerProtocolFee,
@JsonKey(name: "taker_protocol_fee") required String takerProtocolFee,
@JsonKey(name: "maker_referrer_fee") required String makerReferrerFee,
@JsonKey(name: "fee_recipient") required String feeRecipient,
@JsonKey(name: "fee_method") required int feeMethod,
required int side,
@JsonKey(name: "sale_kind") required int saleKind,
required String target,
@JsonKey(name: "how_to_call") required int howToCall,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacementPattern,
@JsonKey(name: "static_target") required String staticTarget,
@JsonKey(name: "static_extradata") String? staticExtradata,
@JsonKey(name: "payment_token") required String paymentToken,
@JsonKey(name: "base_price") required String basePrice,
required String extra,
@JsonKey(name: "listing_time") required int listingTime,
@JsonKey(name: "expiration_time") required int expirationTime,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? englishAuctionReservePrice,
@JsonKey(name: "current_bounty") String? currentBounty,
int? v,
String? r,
String? s,
@JsonKey(name: "contract_address") required String contractAddress,
@JsonKey(name: "token_id") required String tokenId,
  }) = _CreateOrderDto;

  factory CreateOrderDto.fromJson(Map<String, dynamic> json) => _$CreateOrderDtoFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
abstract class Token with _$Token {
  const factory Token({
    required String address,
required String name,
required String symbol,
required int decimals,
@JsonKey(name: "image_url") String? imageUrl,
@JsonKey(name: "klay_price") String? klayPrice,
@JsonKey(name: "usd_price") String? usdPrice,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_activity.freezed.dart';
part 'item_activity.g.dart';

@freezed
abstract class ItemActivity with _$ItemActivity {
  const factory ItemActivity({
    required sssss id,
@JsonKey(name: "item_id") required String itemId,
@JsonKey(name: "activity_type") required String activityType,
String? price,
int? quantity,
String? from,
String? to,
@JsonKey(name: "tx_hash") String? txHash,
@JsonKey(name: "order_id") String? orderId,
required String timestamp,
@JsonKey(name: "listing_time") int? listingTime,
@JsonKey(name: "expiration_time") int? expirationTime,
Item? item,
@JsonKey(name: "item_summary") ItemSummary? itemSummary,
@JsonKey(name: "payment_token_contract") Token? paymentTokenContract,
@JsonKey(name: "from_account") Account? fromAccount,
@JsonKey(name: "to_account") Account? toAccount,
  }) = _ItemActivity;

  factory ItemActivity.fromJson(Map<String, dynamic> json) => _$ItemActivityFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_summary.freezed.dart';
part 'item_summary.g.dart';

@freezed
abstract class ItemSummary with _$ItemSummary {
  const factory ItemSummary({
    required String id,
@JsonKey(name: "contract_address") required String contractAddress,
@JsonKey(name: "contract_schema") required String contractSchema,
@JsonKey(name: "token_id") required String tokenId,
String? name,
String? description,
String? image,
String? thumbnail,
@JsonKey(name: "full_image") String? fullImage,
@JsonKey(name: "external_url") String? externalUrl,
@JsonKey(name: "animation_url") String? animationUrl,
@JsonKey(name: "youtube_url") String? youtubeUrl,
required String minter,
@JsonKey(name: "created_at") required String createdAt,
Game? game,
@JsonKey(name: "current_listing") ItemActivity? currentListing,
@JsonKey(name: "top_bid") ItemActivity? topBid,
@JsonKey(name: "top_offer") ItemActivity? topOffer,
@JsonKey(name: "recent_bid") ItemActivity? recentBid,
@JsonKey(name: "recent_offer") ItemActivity? recentOffer,
@JsonKey(name: "last_sale") ItemActivity? lastSale,
@JsonKey(name: "viewer_info") ViewerInfo? viewerInfo,
  }) = _ItemSummary;

  factory ItemSummary.fromJson(Map<String, dynamic> json) => _$ItemSummaryFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wyvern_n_f_t_asset.freezed.dart';
part 'wyvern_n_f_t_asset.g.dart';

@freezed
abstract class WyvernNFTAsset with _$WyvernNFTAsset {
  const factory WyvernNFTAsset({
    required String id,
required String address,
  }) = _WyvernNFTAsset;

  factory WyvernNFTAsset.fromJson(Map<String, dynamic> json) => _$WyvernNFTAssetFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wyvern_f_t_asset.freezed.dart';
part 'wyvern_f_t_asset.g.dart';

@freezed
abstract class WyvernFTAsset with _$WyvernFTAsset {
  const factory WyvernFTAsset({
    String? id,
required String address,
required String quantity,
  }) = _WyvernFTAsset;

  factory WyvernFTAsset.fromJson(Map<String, dynamic> json) => _$WyvernFTAssetFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_metadata_for_asset.freezed.dart';
part 'exchange_metadata_for_asset.g.dart';

@freezed
abstract class ExchangeMetadataForAsset with _$ExchangeMetadataForAsset {
  const factory ExchangeMetadataForAsset({
    required  asset,
required WyvernSchemaName schema,
@JsonKey(name: "referrer_address") String? referrerAddress,
  }) = _ExchangeMetadataForAsset;

  factory ExchangeMetadataForAsset.fromJson(Map<String, dynamic> json) => _$ExchangeMetadataForAssetFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    required String id,
required String hash,
@JsonKey(name: "item_id") required String itemId,
required String exchange,
required String maker,
required String taker,
@JsonKey(name: "maker_relayer_fee") required String makerRelayerFee,
@JsonKey(name: "taker_relayer_fee") required String takerRelayerFee,
@JsonKey(name: "maker_protocol_fee") required String makerProtocolFee,
@JsonKey(name: "taker_protocol_fee") required String takerProtocolFee,
@JsonKey(name: "maker_referrer_fee") required String makerReferrerFee,
@JsonKey(name: "fee_recipient") required String feeRecipient,
@JsonKey(name: "fee_method") required int feeMethod,
required int side,
@JsonKey(name: "sale_kind") required int saleKind,
required String target,
@JsonKey(name: "how_to_call") required int howToCall,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacementPattern,
@JsonKey(name: "static_target") required String staticTarget,
@JsonKey(name: "static_extradata") String? staticExtradata,
@JsonKey(name: "payment_token") required String paymentToken,
@JsonKey(name: "base_price") required String basePrice,
required String extra,
@JsonKey(name: "listing_time") required int listingTime,
@JsonKey(name: "expiration_time") required int expirationTime,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? englishAuctionReservePrice,
@JsonKey(name: "current_bounty") String? currentBounty,
int? v,
String? r,
String? s,
required bool cancelled,
required bool finalized,
@JsonKey(name: "marked_invalid") required bool markedInvalid,
@JsonKey(name: "created_at") required String createdAt,
@JsonKey(name: "updated_at") required String updatedAt,
Item? item,
@JsonKey(name: "item_summary") ItemSummary? itemSummary,
required ExchangeMetadataForAsset metadata,
@JsonKey(name: "maker_account") required Account makerAccount,
@JsonKey(name: "taker_account") required Account takerAccount,
@JsonKey(name: "fee_recipient_account") required Account feeRecipientAccount,
@JsonKey(name: "payment_token_contract") required Token paymentTokenContract,
@JsonKey(name: "waiting_for_best_counter_order") required bool waitingForBestCounterOrder,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_buy_order_request.freezed.dart';
part 'make_buy_order_request.g.dart';

@freezed
abstract class MakeBuyOrderRequest with _$MakeBuyOrderRequest {
  const factory MakeBuyOrderRequest({
    @JsonKey(name: "token_address") required String tokenAddress,
@JsonKey(name: "token_id") required String tokenId,
required int quantity,
@JsonKey(name: "account_address") required String accountAddress,
@JsonKey(name: "start_amount") required int startAmount,
@JsonKey(name: "expiration_time") required int expirationTime,
@JsonKey(name: "payment_token_address") required String paymentTokenAddress,
@JsonKey(name: "extra_bounty_basis_points") required int extraBountyBasisPoints,
@JsonKey(name: "sell_order_id") String? sellOrderId,
@JsonKey(name: "referrer_address") String? referrerAddress,
  }) = _MakeBuyOrderRequest;

  factory MakeBuyOrderRequest.fromJson(Map<String, dynamic> json) => _$MakeBuyOrderRequestFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unhashed_order.freezed.dart';
part 'unhashed_order.g.dart';

@freezed
abstract class UnhashedOrder with _$UnhashedOrder {
  const factory UnhashedOrder({
    required String exchange,
required String maker,
required String taker,
@JsonKey(name: "maker_relayer_fee") required String makerRelayerFee,
@JsonKey(name: "taker_relayer_fee") required String takerRelayerFee,
@JsonKey(name: "maker_protocol_fee") required String makerProtocolFee,
@JsonKey(name: "taker_protocol_fee") required String takerProtocolFee,
@JsonKey(name: "maker_referrer_fee") required String makerReferrerFee,
@JsonKey(name: "fee_recipient") required String feeRecipient,
@JsonKey(name: "fee_method") required int feeMethod,
required int side,
@JsonKey(name: "sale_kind") required int saleKind,
required String target,
@JsonKey(name: "how_to_call") required int howToCall,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacementPattern,
@JsonKey(name: "static_target") required String staticTarget,
@JsonKey(name: "static_extradata") String? staticExtradata,
@JsonKey(name: "payment_token") required String paymentToken,
@JsonKey(name: "base_price") required String basePrice,
required String extra,
@JsonKey(name: "listing_time") required int listingTime,
@JsonKey(name: "expiration_time") required int expirationTime,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? englishAuctionReservePrice,
required ExchangeMetadataForAsset metadata,
@JsonKey(name: "waiting_for_best_counter_order") required bool waitingForBestCounterOrder,
  }) = _UnhashedOrder;

  factory UnhashedOrder.fromJson(Map<String, dynamic> json) => _$UnhashedOrderFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_sell_order_request.freezed.dart';
part 'make_sell_order_request.g.dart';

@freezed
abstract class MakeSellOrderRequest with _$MakeSellOrderRequest {
  const factory MakeSellOrderRequest({
    @JsonKey(name: "token_address") required String tokenAddress,
@JsonKey(name: "token_id") required String tokenId,
required int quantity,
@JsonKey(name: "account_address") required String accountAddress,
@JsonKey(name: "start_amount") required int startAmount,
@JsonKey(name: "end_amount") int? endAmount,
@JsonKey(name: "wait_for_highest_bid") required bool waitForHighestBid,
@JsonKey(name: "english_auction_reserve_price") int? englishAuctionReservePrice,
@JsonKey(name: "expiration_time") required int expirationTime,
@JsonKey(name: "payment_token_address") required String paymentTokenAddress,
@JsonKey(name: "extra_bounty_basis_points") required int extraBountyBasisPoints,
@JsonKey(name: "buyer_address") required String buyerAddress,
  }) = _MakeSellOrderRequest;

  factory MakeSellOrderRequest.fromJson(Map<String, dynamic> json) => _$MakeSellOrderRequestFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_matching_order_request.freezed.dart';
part 'make_matching_order_request.g.dart';

@freezed
abstract class MakeMatchingOrderRequest with _$MakeMatchingOrderRequest {
  const factory MakeMatchingOrderRequest({
    @JsonKey(name: "order_id") required String orderId,
@JsonKey(name: "account_address") required String accountAddress,
@JsonKey(name: "recipient_address") required String recipientAddress,
  }) = _MakeMatchingOrderRequest;

  factory MakeMatchingOrderRequest.fromJson(Map<String, dynamic> json) => _$MakeMatchingOrderRequestFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unsigned_order.freezed.dart';
part 'unsigned_order.g.dart';

@freezed
abstract class UnsignedOrder with _$UnsignedOrder {
  const factory UnsignedOrder({
    required String hash,
required String exchange,
required String maker,
required String taker,
@JsonKey(name: "maker_relayer_fee") required String makerRelayerFee,
@JsonKey(name: "taker_relayer_fee") required String takerRelayerFee,
@JsonKey(name: "maker_protocol_fee") required String makerProtocolFee,
@JsonKey(name: "taker_protocol_fee") required String takerProtocolFee,
@JsonKey(name: "maker_referrer_fee") required String makerReferrerFee,
@JsonKey(name: "fee_recipient") required String feeRecipient,
@JsonKey(name: "fee_method") required int feeMethod,
required int side,
@JsonKey(name: "sale_kind") required int saleKind,
required String target,
@JsonKey(name: "how_to_call") required int howToCall,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacementPattern,
@JsonKey(name: "static_target") required String staticTarget,
@JsonKey(name: "static_extradata") String? staticExtradata,
@JsonKey(name: "payment_token") required String paymentToken,
@JsonKey(name: "base_price") required String basePrice,
required String extra,
@JsonKey(name: "listing_time") required int listingTime,
@JsonKey(name: "expiration_time") required int expirationTime,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? englishAuctionReservePrice,
required ExchangeMetadataForAsset metadata,
@JsonKey(name: "waiting_for_best_counter_order") required bool waitingForBestCounterOrder,
  }) = _UnsignedOrder;

  factory UnsignedOrder.fromJson(Map<String, dynamic> json) => _$UnsignedOrderFromJson(json);
}

==============================

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_owner.freezed.dart';
part 'item_owner.g.dart';

@freezed
abstract class ItemOwner with _$ItemOwner {
  const factory ItemOwner({
    @JsonKey(name: "item_id") required String itemId,
required String owner,
required String amount,
@JsonKey(name: "owner_account") required Account ownerAccount,
  }) = _ItemOwner;

  factory ItemOwner.fromJson(Map<String, dynamic> json) => _$ItemOwnerFromJson(json);
}
