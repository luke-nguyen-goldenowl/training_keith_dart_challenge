class TextFieldState {
  bool hint, label, help, error, counter, prefix, suffix, prefixIcon;

  TextFieldState(
    this.counter,
    this.error,
    this.help,
    this.hint,
    this.label,
    this.prefix,
    this.prefixIcon,
    this.suffix,
  );

  factory TextFieldState.ds() {
    return TextFieldState(false, true, false, true, true, false, false, false);
  }

  TextFieldState copyWith({
    hint,
    label,
    help,
    error,
    counter,
    prefix,
    suffix,
    prefixIcon,
  }) {
    return TextFieldState(
      counter ?? this.counter,
      error ?? this.error,
      help ?? this.help,
      hint ?? this.hint,
      label ?? this.label,
      prefix ?? this.prefix,
      prefixIcon ?? this.prefixIcon,
      suffix ?? this.suffix,
    );
  }
}
