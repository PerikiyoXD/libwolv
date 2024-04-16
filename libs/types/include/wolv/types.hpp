#pragma once

#include <cstdint>

namespace wolv {

    namespace unsigned_integers {

        using u8  = std::uint8_t;
        using u16 = std::uint16_t;
        using u32 = std::uint32_t;
        using u64 = std::uint64_t;

    }

    namespace signed_integers {

        using i8  = std::int8_t;
        using i16 = std::int16_t;
        using i32 = std::int32_t;
        using i64 = std::int64_t;

    }

    namespace floating_point_numbers {

        using f32 = float;
        using f64 = double;

    }

    using namespace unsigned_integers;
    using namespace signed_integers;
    using namespace floating_point_numbers;

}