//
//  reverberateWithFlatFrequencyResponse.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** All-pass filter, often used for the creation of reverb modules. - This filter reiterates the input with an echo density determined by loop time.
     The attenuation rate is independent and is determined by the reverberation time
     (defined as the time in seconds for a signal to decay to 1/1000, or 60dB down
     from its original amplitude).  Output will begin to appear immediately.

     - parameter input: Input audio signal.
     - parameter reverbDuration: The duration in seconds for a signal to decay to 1/1000, or 60dB down from its original amplitude. (Default: 0.5, Minimum: 0, Maximum: 10)
     - parameter loopDuration: The loop duration of the filter, in seconds. This can also be thought of as the delay time or “echo density” of the reverberation. (Default: 0.1, Minimum: 0, Maximum: 1)
     */
    public mutating func reverberateWithFlatFrequencyResponse(
        reverbDuration reverbDuration: AKParameter = 0.5,
        loopDuration: Double = 0.1) {
            self = self.reverberatedWithFlatFrequencyResponse(reverbDuration: reverbDuration, loopDuration: loopDuration)
    }

    /** All-pass filter, often used for the creation of reverb modules. - This filter reiterates the input with an echo density determined by loop time.
 The attenuation rate is independent and is determined by the reverberation time
 (defined as the time in seconds for a signal to decay to 1/1000, or 60dB down
 from its original amplitude).  Output will begin to appear immediately.

     - returns: AKOperation
     - parameter reverbDuration: The duration in seconds for a signal to decay to 1/1000, or 60dB down from its original amplitude. (Default: 0.5, Minimum: 0, Maximum: 10)
     - parameter loopDuration: The loop duration of the filter, in seconds. This can also be thought of as the delay time or “echo density” of the reverberation. (Default: 0.1, Minimum: 0, Maximum: 1)
     */
    public func reverberatedWithFlatFrequencyResponse(
        reverbDuration reverbDuration: AKParameter = 0.5,
        loopDuration: Double = 0.1
        ) -> AKOperation {
            return AKOperation("(\(self) \(reverbDuration) \(loopDuration) allpass)")
    }
}