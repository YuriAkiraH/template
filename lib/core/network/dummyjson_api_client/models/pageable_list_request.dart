class PageableListRequest {
  final int limit;
  final int skip;

  const PageableListRequest([
    this.limit = 30,
    this.skip = 0,
  ]);
}
