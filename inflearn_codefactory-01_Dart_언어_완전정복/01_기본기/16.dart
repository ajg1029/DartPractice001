enum Status{
  approved,
  pending,
  rejected,
}

void main() {
  Status statuss = Status.pending;

  if (statuss == Status.approved) {
    print('승인');
  } else if (statuss == Status.pending) {
    print('대기');
  } else {
    print('거절');
  }
}