import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(76, 83, 26, 14, 6);
  assert(Policy.score(signalcase_1) == 135);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(73, 85, 22, 20, 7);
  assert(Policy.score(signalcase_2) == 109);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(89, 91, 26, 18, 11);
  assert(Policy.score(signalcase_3) == 175);
  assert(Policy.classify(signalcase_3) == 'accept');
}
