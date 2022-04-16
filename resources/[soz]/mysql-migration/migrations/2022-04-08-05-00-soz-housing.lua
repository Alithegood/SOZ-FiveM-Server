table.insert(migrations, {
    name = "add-soz-housing",
    queries = {
        [[
            CREATE TABLE IF NOT EXISTS `player_house` (
                `id` int(255) NOT NULL AUTO_INCREMENT,
                `identifier` varchar(50) DEFAULT null,
                `building` varchar(50) DEFAULT null,
                `owner` varchar(50) DEFAULT null,
                `price` int(11) DEFAULT null,
                `entry_zone` json DEFAULT null,
                `exit_zone` json DEFAULT null,
                `teleport` json DEFAULT null,
                `fridge_position` json DEFAULT null,
                `closet_position` json DEFAULT null,
                `stash_position` json DEFAULT null,
                `money_position` json DEFAULT null,
                PRIMARY KEY (`id`)
            ) ENGINE=InnoDB AUTO_INCREMENT=1;
        ]],
        [[
            INSERT INTO player_house (identifier, building, price, exit_zone) VALUES
                ('v_trailer_01', NULL, 24000, '{"x": 365.66, "y": 2981.27, "z": 35.53, "sx": 2.4, "sy": 1.2, "heading": 30, "minZ": 34.53, "maxZ": 36.93}'),
                ('v_trailer_02', NULL, 24000, '{"x": 413.11, "y": 2965.56, "z": 37.16, "sx": 1.2, "sy": 2.4, "heading": 50, "minZ": 36.16, "maxZ": 38.56}'),
                ('v_trailer_03', NULL, 24000, '{"x": 413.11, "y": 2965.56, "z": 37.16, "sx": 1.2, "sy": 2.4, "heading": 50, "minZ": 36.16, "maxZ": 38.56}'),
                ('v_trailer_04', NULL, 24000, '{"x": 433.6, "y": 2994.4, "z": 37.32, "sx": 1.0, "sy": 2.2, "heading": 20, "minZ": 36.32, "maxZ": 38.72}'),
                ('v_trailer_05', NULL, 24000, '{"x": 100.45, "y": 3681.05, "z": 35.0, "sx": 1.0, "sy": 2.2, "heading": 0, "minZ": 34.0, "maxZ": 36.4}'),
                ('v_trailer_06', NULL, 24000, '{"x": 100.39, "y": 3649.08, "z": 34.71, "sx": 2.4, "sy": 1.2, "heading": 0, "minZ": 33.71, "maxZ": 36.11}'),
                ('v_trailer_07', NULL, 24000, '{"x": 12.81, "y": 3689.97, "z": 35.42, "sx": 1.2, "sy": 2.4, "heading": 20, "minZ": 34.42, "maxZ": 36.82}'),
                ('v_trailer_08', NULL, 24000, '{"x": 71.06, "y": 3755.77, "z": 34.67, "sx": 2.4, "sy": 1.2, "heading": 10, "minZ": 33.47, "maxZ": 36.07}'),
                ('v_trailer_09', NULL, 24000, '{"x": 861.33, "y": 2877.69, "z": 52.83, "sx": 1.2, "sy": 2.4, "heading": 5, "minZ": 51.83, "maxZ": 54.23}'),
                ('v_trailer_10', NULL, 24000, '{"x": 893.39, "y": 2856.89, "z": 50.43, "sx": 1.2, "sy": 2.4, "heading": 50, "minZ": 49.43, "maxZ": 51.83}'),
                ('v_trailer_11', NULL, 24000, '{"x": 1584.38, "y": 2910.38, "z": 51.73, "sx": 2.6, "sy": 1.2, "heading": 35, "minZ": 50.73, "maxZ": 53.13}'),
                ('v_trailer_12', NULL, 24000, '{"x": 2395.89, "y": 3316.15, "z": 42.94, "sx": 2.4, "sy": 1.0, "heading": 42, "minZ": 41.94, "maxZ": 44.34}'),
                ('v_trailer_13', NULL, 24000, '{"x": 2484.32, "y": 3443.92, "z": 44.87, "sx": 2.4, "sy": 1, "heading": 50, "minZ": 43.87, "maxZ": 46.27}'),
                ('v_trailer_14', NULL, 24000, '{"x": 2728.83, "y": 4283.53, "z": 44.2, "sx": 2.4, "sy": 1.2, "heading": 0, "minZ": 43.2, "maxZ": 45.6}'),
                ('v_trailer_15', NULL, 24000, '{"x": 2163.51, "y": 3377.16, "z": 40.24, "sx": 2.4, "sy": 1.2, "heading": 326, "minZ": 39.24, "maxZ": 41.64}'),
                ('north_house_low_01', NULL, 42000, '{"x": 2199.58, "y": 3318.36, "z": 41.82, "sx": 2.4, "sy": 1.0, "heading": 30, "minZ": 40.82, "maxZ": 43.22}'),
                ('north_house_low_02', NULL, 42000, '{"x": -46.98, "y": 6639.23, "z": 31.71, "sx": 1.6, "sy": 1, "heading": 40, "minZ": 30.56, "maxZ": 33.16}'),
                ('north_house_low_03', NULL, 42000, '{"x": 2472.86, "y": 4099.26, "z": 40.77, "sx": 1.6, "sy": 1, "heading": 335, "minZ": 39.77, "maxZ": 42.17}'),
                ('north_house_low_04', NULL, 42000, '{"x": 2472.9, "y": 4099.23, "z": 40.77, "sx": 1.6, "sy": 0.8, "heading": 340, "minZ": 39.77, "maxZ": 42.17}'),
                ('north_house_low_05', NULL, 42000, '{"x": 912.94, "y": 3578.15, "z": 33.88, "sx": 1.0, "sy": 1.6, "heading": 0, "minZ": 32.68, "maxZ": 35.28}'),
                ('north_house_low_06', NULL, 42000, '{"x": -411.28, "y": 6157.63, "z": 32.37, "sx": 1.0, "sy": 1.6, "heading": 315, "minZ": 31.37, "maxZ": 33.77}'),
                ('north_house_low_07', NULL, 42000, '{"x": -429.92, "y": 6151.41, "z": 32.09, "sx": 1.0, "sy": 1.6, "heading": 315, "minZ": 31.09, "maxZ": 33.49}'),
                ('north_house_low_08', NULL, 42000, '{"x": 8.46, "y": 6575.27, "z": 32.6, "sx": 1.6, "sy": 1, "heading": 315, "minZ": 31.6, "maxZ": 34.0}'),
                ('north_house_low_09', NULL, 42000, '{"x": 1672.76, "y": 4693.2, "z": 43.06, "sx": 1.6, "sy": 1.0, "heading": 0, "minZ": 42.06, "maxZ": 44.46}'),
                ('north_house_mid_01', NULL, 62000, '{"x": -31.67, "y": 2885.22, "z": 59.19, "sx": 1.6, "sy": 1.0, "heading": 339, "minZ": 58.19, "maxZ": 60.59}'),
                ('north_house_mid_02', NULL, 62000, '{"x": -463.14, "y": 6201.8, "z": 33.64, "sx": 1.6, "sy": 1.0, "heading": 0, "minZ": 32.64, "maxZ": 35.04}'),
                ('north_house_mid_03', NULL, 62000, '{"x": -128.01, "y": 6558.4, "z": 30.75, "sx": 1.6, "sy": 1, "heading": 315, "minZ": 29.75, "maxZ": 32.15}'),
                ('north_house_mid_04', NULL, 62000, '{"x": -367.85, "y": 6346.65, "z": 32.01, "sx": 1.6, "sy": 1, "heading": 310, "minZ": 30.86, "maxZ": 33.46}'),
                ('north_house_mid_05', NULL, 62000, '{"x": 1651.27, "y": 4779.61, "z": 42.23, "sx": 1.0, "sy": 1.6, "heading": 10, "minZ": 41.23, "maxZ": 43.63}'),
                ('north_house_mid_06', NULL, 62000, '{"x": 1667.2, "y": 4652.63, "z": 43.72, "sx": 1.0, "sy": 1.6, "heading": 0, "minZ": 42.52, "maxZ": 45.12}'),
                ('north_house_mid_07', NULL, 62000, '{"x": 258.94, "y": 3174.24, "z": 43.08, "sx": 1.6, "sy": 1, "heading": 2, "minZ": 42.08, "maxZ": 44.48}'),
                ('soz_appartements_01', 'power_street', 38000, '{"x": 191.57, "y": 3033.1, "z": 44.16, "sx": 1.6, "sy": 1.0, "heading": 3, "minZ": 43.16, "maxZ": 45.56}'),
                ('soz_appartements_02', 'power_street', 38000, '{"x": 29.04, "y": -924.15, "z": 99.28, "sx": 1.8, "sy": 1, "heading": 340, "minZ": 98.28, "maxZ": 100.68}'),
                ('soz_appartements_03', 'power_street', 38000, '{"x": 31.75, "y": -927.58, "z": 76.26, "sx": 1.8, "sy": 1, "heading": 340, "minZ": 75.21, "maxZ": 77.81}'),
                ('soz_appartements_04', 'peaceful_street', 38000, '{"x": 31.7, "y": -927.59, "z": 88.79, "sx": 1.8, "sy": 1, "heading": 340, "minZ": 87.79, "maxZ": 90.19}'),
                ('soz_appartements_05', 'peaceful_street', 38000, '{"x": -277.04, "y": -722.5, "z": 83.78, "sx": 0.8, "sy": 1.8, "heading": 340, "minZ": 82.63, "maxZ": 85.23}'),
                ('soz_appartements_06', 'peaceful_street', 38000, '{"x": -277.09, "y": -722.53, "z": 109.74, "sx": 0.8, "sy": 1.8, "heading": 340, "minZ": 108.59, "maxZ": 111.19}'),
                ('soz_appartements_07', NULL, 38000, '{"x": -277.08, "y": -722.51, "z": 95.31, "sx": 1.0, "sy": 1.8, "heading": 340, "minZ": 94.31, "maxZ": 96.71}'),
                ('soz_appartements_08', 'san_andreas', 38000, '{"x": -781.87, "y": -765.79, "z": 72.68, "sx": 1.8, "sy": 1.0, "heading": 0, "minZ": 71.68, "maxZ": 74.08}'),
                ('soz_appartements_09', 'san_andreas', 38000, '{"x": -1015.28, "y": -752.64, "z": 45.45, "sx": 1.8, "sy": 1, "heading": 0, "minZ": 44.45, "maxZ": 46.85}'),
                ('soz_appartements_10', NULL, 38000, '{"x": -1015.31, "y": -752.64, "z": 36.32, "sx": 1.8, "sy": 1, "heading": 0, "minZ": 35.17, "maxZ": 37.77}'),
                ('soz_appartements_11', 'elign', 38000, 108.78, '{"x": 295.67, "y": 113.42, "z": 133.99, "sx": 0.8, "sy": 1.8, "heading": 340, "minZ": 132.89, "maxZ": 135.49}'),
                ('soz_appartements_12', 'elign', 38000, 109.78, '{"x": 103.17, "y": -879.81, "z": 122.26, "sx": 0.8, "sy": 1.8, "heading": 340, "minZ": 121.26, "maxZ": 123.86}'),
                ('soz_appartements_13', 'vespucci', 38000, '{"x": 115.26, "y": -865.74, "z": 106.32, "sx": 1.0, "sy": 1.8, "heading": 340, "minZ": 105.12, "maxZ": 107.72}'),
                ('soz_appartements_14', 'vespucci', 38000, '{"x": -223.11, "y": -827.48, "z": 104.76, "sx": 1.0, "sy": 1.8, "heading": 340, "minZ": 103.66, "maxZ": 106.26}'),
                ('south_house_low_01', NULL, 46000, '{"x": -223.15, "y": -827.46, "z": 84.65, "sx": 1.0, "sy": 1.8, "heading": 340, "minZ": 83.5, "maxZ": 86.1}'),
                ('south_house_low_02', NULL, 46000, '{"x": -774.13, "y": -904.72, "z": 25.19, "sx": 1.6, "sy": 1, "heading": 0, "minZ": 24.19, "maxZ": 26.59}'),
                ('south_house_low_03', NULL, 46000, '{"x": -724.25, "y": -863.65, "z": 29.92, "sx": 1.6, "sy": 1, "heading": 0, "minZ": 28.92, "maxZ": 31.32}'),
                ('south_house_low_04', NULL, 46000, '{"x": 319.6, "y": -1270.64, "z": 37.9, "sx": 1.6, "sy": 1, "heading": 0, "minZ": 36.9, "maxZ": 39.3}'),
                ('south_house_low_05', 'fantastic_place', 46000, '{"x": -33.01, "y": -1037.84, "z": 37.11, "sx": 1.6, "sy": 1, "heading": 340, "minZ": 36.11, "maxZ": 38.51}'),
                ('south_house_low_06', 'fantastic_place', 46000, '{"x": 274.06, "y": -1111.88, "z": 39.22, "sx": 1.0, "sy": 1.6, "heading": 0, "minZ": 38.22, "maxZ": 40.62}'),
                ('south_house_low_07', 'fantastic_place', 46000, '{"x": 274.04, "y": -1111.81, "z": 39.22, "sx": 1.0, "sy": 1.6, "heading": 0, "minZ": 38.22, "maxZ": 40.62}'),
                ('south_house_mid_01', NULL, 68000, '{"x": 282.37, "y": -1077.98, "z": 50.45, "sx": 1.0, "sy": 1.6, "heading": 0, "minZ": 49.45, "maxZ": 51.85}'),
                ('south_house_mid_02', NULL, 68000, '{"x": 339.5, "y": -822.28, "z": 40.02, "sx": 1.6, "sy": 1, "heading": 0, "minZ": 39.02, "maxZ": 41.42}'),
                ('south_house_mid_03', NULL, 68000, '{"x": -1045.29, "y": -995.58, "z": 6.24, "sx": 0.8, "sy": 1.6, "heading": 30, "minZ": 5.24, "maxZ": 7.64}'),
                ('south_house_mid_04', NULL, 68000, '{"x": -1075.88, "y": -1058.61, "z": 6.57, "sx": 1, "sy": 1.6, "heading": 30, "minZ": 5.57, "maxZ": 7.97}'),
                ('south_house_mid_05', NULL, 68000, '{"x": -1113.39, "y": -1202.31, "z": 6.82, "sx": 1.6, "sy": 0.8, "heading": 30, "minZ": 5.82, "maxZ": 8.22}'),
                ('south_house_mid_06', NULL, 68000, '{"x": -1073.21, "y": -1139.11, "z": 6.78, "sx": 1.6, "sy": 1, "heading": 30, "minZ": 5.78, "maxZ": 8.18}'),
                ('south_house_mid_07', NULL, 68000, '{"x": 2.51, "y": -230.24, "z": 55.85, "sx": 1.6, "sy": 1, "heading": 340, "minZ": 54.85, "maxZ": 57.25}'),
                ('south_house_mid_08', NULL, 68000, '{"x": 241.18, "y": -327.2, "z": 56.67, "sx": 1.0, "sy": 1.6, "heading": 340, "minZ": 55.67, "maxZ": 58.07}'),
                ('soz_villa_01', NULL, 180000, '{"x": 371.28, "y": -886.72, "z": 36.02, "sx": 1.0, "sy": 1.6, "heading": 0, "minZ": 35.02, "maxZ": 37.42}'),
                ('soz_villa_02', NULL, 180000, '{"x": -1151.66, "y": 540.39, "z": 103.76, "sx": 1.0, "sy": 1.6, "heading": 10, "minZ": 102.76, "maxZ": 105.16}'),
                ('soz_villa_03', NULL, 180000, '{"x": -1328.45, "y": 595.06, "z": 135.76, "sx": 1.6, "sy": 1, "heading": 325, "minZ": 134.76, "maxZ": 137.16}'),
                ('soz_villa_04', NULL, 180000, '{"x": -919.1, "y": 690.89, "z": 155.52, "sx": 0.8, "sy": 1.6, "heading": 0, "minZ": 154.32, "maxZ": 156.92}'),
                ('soz_villa_05', NULL, 180000, '{"x": -1197.83, "y": 684.52, "z": 150.41, "sx": 1.6, "sy": 1, "heading": 335, "minZ": 149.41, "maxZ": 151.81}'),
                ('soz_villa_06', NULL, 180000, '{"x": -1128.4, "y": 754.67, "z": 165.08, "sx": 0.8, "sy": 1.6, "heading": 25, "minZ": 163.88, "maxZ": 166.48}');
        ]],
    },
});
