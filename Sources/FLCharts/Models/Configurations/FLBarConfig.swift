//
//  FLBarConfig.swift
//  FLCharts
//
//  Created by Francesco Leoni on 13/01/22.
//

import UIKit

public struct FLBarConfig {
    
    public enum Radius {
        
        case none
        
        /// Rounds up the shorter side of the bar.
        case capsule
        
        /// Applies the specified radius to the bar.
        case custom(CGFloat)
        
        /// Applies the specified radius to the given corners of the bar.
        case corners(corners: CACornerMask, CGFloat)
    }

    /// The style of the bars corners.
    public var radius: Radius

    public enum Sizing {
        /// The chart scrolls. The width of each bar is explicitly specified.
        case fixed(width: CGFloat)

        /// The chart scrolls. The width of each bar will be calculated based on fitting the number of bars specified in the visible width of the chart.
        case adaptive(bars: Int)

        /// The chart does not scroll. The width of each bar will be calculated based on the width of the chart.
        case noScroll
    }

    public var sizing: Sizing
    
    /// The space between each chart bar.
    public var spacing: CGFloat

    public init(radius: Radius = .corners(corners: [.layerMinXMinYCorner, .layerMaxXMinYCorner], 3),
                sizing: Sizing = .noScroll,
                spacing: CGFloat = 5) {
        self.radius = radius
        self.sizing = sizing
        self.spacing = spacing
    }
}
