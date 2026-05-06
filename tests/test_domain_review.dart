import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(46, 54, 25, 76);
  assert(DomainReviewLens.score(item) == 147);
  assert(DomainReviewLens.lane(item) == 'ship');
}
