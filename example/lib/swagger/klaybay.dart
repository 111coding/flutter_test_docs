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
    @JsonKey(name: "items_per_page") required int itemsPerPage,
@JsonKey(name: "current_page") required int currentPage,
@JsonKey(name: "sort_by") required dynamic sortBy,
@JsonKey(name: "search_by") required List<array> searchBy,
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
    @JsonKey(name: "items_per_page") required int itemsPerPage,
@JsonKey(name: "current_page") required int currentPage,
@JsonKey(name: "sort_by") required dynamic sortBy,
@JsonKey(name: "search_by") required List<array> searchBy,
required String search,
dynamic? filter,
@JsonKey(name: "total_items") required int totalItems,
@JsonKey(name: "total_pages") required int totalPages,
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
@JsonKey(name: "profile_image") String? profile_image,
@JsonKey(name: "banner_image") String? banner_image,
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
@JsonKey(name: "manager_account") Account? manager_account,
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
@JsonKey(name: "company_id") String? company_id,
String? manager,
required Map<String,String> name,
String? image,
String? banner,
required Map<String,String> description,
@JsonKey(name: "vol__2_4h") String? vol_24h,
@JsonKey(name: "vol__2_4h_rate") int? vol_24h_rate,
@JsonKey(name: "total_vol") String? total_vol,
@JsonKey(name: "floor_price") String? floor_price,
@JsonKey(name: "owner_count") required int owner_count,
@JsonKey(name: "item_count") required int item_count,
GameLink? links,
Company? company,
@JsonKey(name: "manager_account") Account? manager_account,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
required int count,
@JsonKey(name: "min_value") required int min_value,
@JsonKey(name: "max_value") required int max_value,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
required int count,
@JsonKey(name: "min_value") required int min_value,
@JsonKey(name: "max_value") required int max_value,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
required int count,
@JsonKey(name: "min_value") required int min_value,
@JsonKey(name: "max_value") required int max_value,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
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
@JsonKey(name: "game_id") String? game_id,
required String name,
required String schema,
String? description,
String? image,
@JsonKey(name: "external_link") String? external_link,
@JsonKey(name: "klaybay_buyer_fee_basis_points") required int klaybay_buyer_fee_basis_points,
@JsonKey(name: "klaybay_seller_fee_basis_points") required int klaybay_seller_fee_basis_points,
@JsonKey(name: "dev_buyer_fee_basis_points") required int dev_buyer_fee_basis_points,
@JsonKey(name: "dev_seller_fee_basis_points") required int dev_seller_fee_basis_points,
@JsonKey(name: "item_attribute_stats") List? item_attribute_stats,
Game? game,
@JsonKey(name: "min_listing_price") String? min_listing_price,
@JsonKey(name: "max_listing_price") String? max_listing_price,
@JsonKey(name: "min_sale_price") String? min_sale_price,
@JsonKey(name: "max_sale_price") String? max_sale_price,
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
@JsonKey(name: "item_contracts") required ItemContract item_contracts,
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
@JsonKey(name: "external_url") String? external_url,
@JsonKey(name: "animation_url") String? animation_url,
@JsonKey(name: "youtube_url") String? youtube_url,
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
@JsonKey(name: "game_id") String? game_id,
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
    @JsonKey(name: "block_number") required String block_number,
@JsonKey(name: "log_index") required String log_index,
required String address,
@JsonKey(name: "tx_hash") required String tx_hash,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
required int value,
@JsonKey(name: "max_value") int? max_value,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
required int value,
@JsonKey(name: "max_value") int? max_value,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
required int value,
@JsonKey(name: "max_value") int? max_value,
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
    @JsonKey(name: "trait_type") required String trait_type,
@JsonKey(name: "display_type") required String display_type,
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
@JsonKey(name: "contract_address") required String contract_address,
@JsonKey(name: "token_id") required String token_id,
String? name,
String? description,
String? image,
String? thumbnail,
@JsonKey(name: "full_image") String? full_image,
@JsonKey(name: "external_url") String? external_url,
@JsonKey(name: "animation_url") String? animation_url,
@JsonKey(name: "youtube_url") String? youtube_url,
required String minter,
required List attributes,
ItemContract? contract,
@JsonKey(name: "minter_account") required Account minter_account,
@JsonKey(name: "listing_price") String? listing_price,
@JsonKey(name: "listing_time") int? listing_time,
@JsonKey(name: "expiration_time") int? expiration_time,
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
@JsonKey(name: "sellable_count") int? sellable_count,
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
@JsonKey(name: "owner_count") required int owner_count,
@JsonKey(name: "owner_account") Account? owner_account,
@JsonKey(name: "viewer_info") ViewerInfo? viewer_info,
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
    @JsonKey(name: "game_id") required String game_id,
@JsonKey(name: "game_name") required Map<String,String> game_name,
@JsonKey(name: "item_count") required int item_count,
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
    @JsonKey(name: "min_listing_price") String? min_listing_price,
@JsonKey(name: "max_listing_price") String? max_listing_price,
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
    @JsonKey(name: "game_id") required String game_id,
@JsonKey(name: "game_name") required Map<String,String> game_name,
@JsonKey(name: "order_count") required int order_count,
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
@JsonKey(name: "item_possession_status") required ItemPossessionStatus item_possession_status,
@JsonKey(name: "min_listing_price") required String min_listing_price,
@JsonKey(name: "max_listing_price") required String max_listing_price,
@JsonKey(name: "active_listing_counts") required GameOrderCount active_listing_counts,
@JsonKey(name: "inactive_listing_counts") required GameOrderCount inactive_listing_counts,
@JsonKey(name: "min_offer_price") required String min_offer_price,
@JsonKey(name: "max_offer_price") required String max_offer_price,
@JsonKey(name: "made_offer_counts") required GameOrderCount made_offer_counts,
@JsonKey(name: "received_offer_counts") required GameOrderCount received_offer_counts,
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
    @JsonKey(name: "status_code") required int statusCode,
@JsonKey(name: "error_code") String? errorCode,
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
@JsonKey(name: "maker_relayer_fee") required String maker_relayer_fee,
@JsonKey(name: "taker_relayer_fee") required String taker_relayer_fee,
@JsonKey(name: "maker_protocol_fee") required String maker_protocol_fee,
@JsonKey(name: "taker_protocol_fee") required String taker_protocol_fee,
@JsonKey(name: "maker_referrer_fee") required String maker_referrer_fee,
@JsonKey(name: "fee_recipient") required String fee_recipient,
@JsonKey(name: "fee_method") required int fee_method,
required int side,
@JsonKey(name: "sale_kind") required int sale_kind,
required String target,
@JsonKey(name: "how_to_call") required int how_to_call,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacement_pattern,
@JsonKey(name: "static_target") required String static_target,
@JsonKey(name: "static_extradata") String? static_extradata,
@JsonKey(name: "payment_token") required String payment_token,
@JsonKey(name: "base_price") required String base_price,
required String extra,
@JsonKey(name: "listing_time") required int listing_time,
@JsonKey(name: "expiration_time") required int expiration_time,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? english_auction_reserve_price,
@JsonKey(name: "current_bounty") String? current_bounty,
int? v,
String? r,
String? s,
@JsonKey(name: "contract_address") required String contract_address,
@JsonKey(name: "token_id") required String token_id,
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
@JsonKey(name: "image_url") String? image_url,
@JsonKey(name: "klay_price") String? klay_price,
@JsonKey(name: "usd_price") String? usd_price,
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
@JsonKey(name: "item_id") required String item_id,
@JsonKey(name: "activity_type") required String activity_type,
String? price,
int? quantity,
String? from,
String? to,
@JsonKey(name: "tx_hash") String? tx_hash,
@JsonKey(name: "order_id") String? order_id,
required String timestamp,
@JsonKey(name: "listing_time") int? listing_time,
@JsonKey(name: "expiration_time") int? expiration_time,
Item? item,
@JsonKey(name: "item_summary") ItemSummary? item_summary,
@JsonKey(name: "payment_token_contract") Token? payment_token_contract,
@JsonKey(name: "from_account") Account? from_account,
@JsonKey(name: "to_account") Account? to_account,
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
@JsonKey(name: "contract_address") required String contract_address,
@JsonKey(name: "contract_schema") required String contract_schema,
@JsonKey(name: "token_id") required String token_id,
String? name,
String? description,
String? image,
String? thumbnail,
@JsonKey(name: "full_image") String? full_image,
@JsonKey(name: "external_url") String? external_url,
@JsonKey(name: "animation_url") String? animation_url,
@JsonKey(name: "youtube_url") String? youtube_url,
required String minter,
@JsonKey(name: "created_at") required String created_at,
Game? game,
@JsonKey(name: "current_listing") ItemActivity? current_listing,
@JsonKey(name: "top_bid") ItemActivity? top_bid,
@JsonKey(name: "top_offer") ItemActivity? top_offer,
@JsonKey(name: "recent_bid") ItemActivity? recent_bid,
@JsonKey(name: "recent_offer") ItemActivity? recent_offer,
@JsonKey(name: "last_sale") ItemActivity? last_sale,
@JsonKey(name: "viewer_info") ViewerInfo? viewer_info,
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
@JsonKey(name: "referrer_address") String? referrer_address,
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
@JsonKey(name: "item_id") required String item_id,
required String exchange,
required String maker,
required String taker,
@JsonKey(name: "maker_relayer_fee") required String maker_relayer_fee,
@JsonKey(name: "taker_relayer_fee") required String taker_relayer_fee,
@JsonKey(name: "maker_protocol_fee") required String maker_protocol_fee,
@JsonKey(name: "taker_protocol_fee") required String taker_protocol_fee,
@JsonKey(name: "maker_referrer_fee") required String maker_referrer_fee,
@JsonKey(name: "fee_recipient") required String fee_recipient,
@JsonKey(name: "fee_method") required int fee_method,
required int side,
@JsonKey(name: "sale_kind") required int sale_kind,
required String target,
@JsonKey(name: "how_to_call") required int how_to_call,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacement_pattern,
@JsonKey(name: "static_target") required String static_target,
@JsonKey(name: "static_extradata") String? static_extradata,
@JsonKey(name: "payment_token") required String payment_token,
@JsonKey(name: "base_price") required String base_price,
required String extra,
@JsonKey(name: "listing_time") required int listing_time,
@JsonKey(name: "expiration_time") required int expiration_time,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? english_auction_reserve_price,
@JsonKey(name: "current_bounty") String? current_bounty,
int? v,
String? r,
String? s,
required bool cancelled,
required bool finalized,
@JsonKey(name: "marked_invalid") required bool marked_invalid,
@JsonKey(name: "created_at") required String created_at,
@JsonKey(name: "updated_at") required String updated_at,
Item? item,
@JsonKey(name: "item_summary") ItemSummary? item_summary,
required ExchangeMetadataForAsset metadata,
@JsonKey(name: "maker_account") required Account maker_account,
@JsonKey(name: "taker_account") required Account taker_account,
@JsonKey(name: "fee_recipient_account") required Account fee_recipient_account,
@JsonKey(name: "payment_token_contract") required Token payment_token_contract,
@JsonKey(name: "waiting_for_best_counter_order") required bool waiting_for_best_counter_order,
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
    @JsonKey(name: "token_address") required String token_address,
@JsonKey(name: "token_id") required String token_id,
required int quantity,
@JsonKey(name: "account_address") required String account_address,
@JsonKey(name: "start_amount") required int start_amount,
@JsonKey(name: "expiration_time") required int expiration_time,
@JsonKey(name: "payment_token_address") required String payment_token_address,
@JsonKey(name: "extra_bounty_basis_points") required int extra_bounty_basis_points,
@JsonKey(name: "sell_order_id") String? sell_order_id,
@JsonKey(name: "referrer_address") String? referrer_address,
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
@JsonKey(name: "maker_relayer_fee") required String maker_relayer_fee,
@JsonKey(name: "taker_relayer_fee") required String taker_relayer_fee,
@JsonKey(name: "maker_protocol_fee") required String maker_protocol_fee,
@JsonKey(name: "taker_protocol_fee") required String taker_protocol_fee,
@JsonKey(name: "maker_referrer_fee") required String maker_referrer_fee,
@JsonKey(name: "fee_recipient") required String fee_recipient,
@JsonKey(name: "fee_method") required int fee_method,
required int side,
@JsonKey(name: "sale_kind") required int sale_kind,
required String target,
@JsonKey(name: "how_to_call") required int how_to_call,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacement_pattern,
@JsonKey(name: "static_target") required String static_target,
@JsonKey(name: "static_extradata") String? static_extradata,
@JsonKey(name: "payment_token") required String payment_token,
@JsonKey(name: "base_price") required String base_price,
required String extra,
@JsonKey(name: "listing_time") required int listing_time,
@JsonKey(name: "expiration_time") required int expiration_time,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? english_auction_reserve_price,
required ExchangeMetadataForAsset metadata,
@JsonKey(name: "waiting_for_best_counter_order") required bool waiting_for_best_counter_order,
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
    @JsonKey(name: "token_address") required String token_address,
@JsonKey(name: "token_id") required String token_id,
required int quantity,
@JsonKey(name: "account_address") required String account_address,
@JsonKey(name: "start_amount") required int start_amount,
@JsonKey(name: "end_amount") int? end_amount,
@JsonKey(name: "wait_for_highest_bid") required bool wait_for_highest_bid,
@JsonKey(name: "english_auction_reserve_price") int? english_auction_reserve_price,
@JsonKey(name: "expiration_time") required int expiration_time,
@JsonKey(name: "payment_token_address") required String payment_token_address,
@JsonKey(name: "extra_bounty_basis_points") required int extra_bounty_basis_points,
@JsonKey(name: "buyer_address") required String buyer_address,
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
    @JsonKey(name: "order_id") required String order_id,
@JsonKey(name: "account_address") required String account_address,
@JsonKey(name: "recipient_address") required String recipient_address,
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
@JsonKey(name: "maker_relayer_fee") required String maker_relayer_fee,
@JsonKey(name: "taker_relayer_fee") required String taker_relayer_fee,
@JsonKey(name: "maker_protocol_fee") required String maker_protocol_fee,
@JsonKey(name: "taker_protocol_fee") required String taker_protocol_fee,
@JsonKey(name: "maker_referrer_fee") required String maker_referrer_fee,
@JsonKey(name: "fee_recipient") required String fee_recipient,
@JsonKey(name: "fee_method") required int fee_method,
required int side,
@JsonKey(name: "sale_kind") required int sale_kind,
required String target,
@JsonKey(name: "how_to_call") required int how_to_call,
String? calldata,
@JsonKey(name: "replacement_pattern") String? replacement_pattern,
@JsonKey(name: "static_target") required String static_target,
@JsonKey(name: "static_extradata") String? static_extradata,
@JsonKey(name: "payment_token") required String payment_token,
@JsonKey(name: "base_price") required String base_price,
required String extra,
@JsonKey(name: "listing_time") required int listing_time,
@JsonKey(name: "expiration_time") required int expiration_time,
required String salt,
required String quantity,
@JsonKey(name: "english_auction_reserve_price") String? english_auction_reserve_price,
required ExchangeMetadataForAsset metadata,
@JsonKey(name: "waiting_for_best_counter_order") required bool waiting_for_best_counter_order,
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
    @JsonKey(name: "item_id") required String item_id,
required String owner,
required String amount,
@JsonKey(name: "owner_account") required Account owner_account,
  }) = _ItemOwner;

  factory ItemOwner.fromJson(Map<String, dynamic> json) => _$ItemOwnerFromJson(json);
}
