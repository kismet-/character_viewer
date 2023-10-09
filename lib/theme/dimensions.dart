/// Wrapper for all view dimensions we use in AAE.
/// This class only exists for easy importing!

class KtfDimens {
  static const noElevation = 0.0;

  static const baseUnit = 16.0;
  static const baseUnit3_4x = 0.75 * baseUnit;
  static const baseUnit2x = 2 * baseUnit;
  static const baseUnit3x = 3 * baseUnit;
  static const baseUnit4x = 4 * baseUnit;
  static const contentMargin = 24.0;

  static const smallCardVerticalContentPadding = baseUnit3_4x;

  // List view item dimensions
  static const listViewItemHeight = 96.0;
  static const listViewThumbnailWidth = listViewItemHeight;
  static const listViewCornerRadius = 4.0;
  static const tallListViewThumbnailWidthHeight = 64.0;
  static const tallListViewThumbnailPaddingRight = 18.0;
  static const tallListViewPadding = 16.0;

  // Max content width
  static const contentMaxWidth = 460.0;

  static const regularButtonHeight = 48.0;
  static const regularButtonIconSize = 24.0;
  static const regularButtonHorizontalPadding = 16.0;
  static const regularButtonCornerRadius = 4.0;
  static const smallButtonHeight = 32.0;
  static const smallButtonIconSize = 20.0;
  static const smallButtonHorizontalPadding = 16.0;
  static const smallButtonCornerRadius = 4.0;

  // Workflow Page Template dimensions
  static const workflowTitleTopMargin = contentMargin;
  static const workflowTitleBottomMargin = baseUnit2x;
  static const workflowBodyBottomMargin = baseUnit2x;
  static const workflowContentSideMargin = contentMargin;
  static const workflowImageMaxHeight = 240.0;
  static const workflowImageBottomMargin = baseUnit2x;
  static const workflowButtonHorizontalFooterButtonSpacing = contentMargin;
  static const workflowButtonHorizontalFooterTopMargin = contentMargin;
  static const workflowButtonHorizontalFooterSideMargin = baseUnit2x;
  static const workflowButtonHorizontalFooterBottomMargin = baseUnit2x;
  static const workflowButtonVerticalFooterButtonSpacing = baseUnit;
  static const workflowButtonVerticalFooterTopMargin = baseUnit2x;
  static const workflowButtonVerticalFooterSideMargin = baseUnit2x;
  static const workflowButtonVerticalFooterBottomMargin = baseUnit2x;
  static const workflowLargeIconSize = 230.0;

  static const loginPageIconSize = 40.0;
}
