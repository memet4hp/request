-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 09:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotlinesmartri`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_owner` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `nama_aplikasi` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `copy_right` varchar(50) DEFAULT NULL,
  `versi` varchar(20) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nama_owner`, `alamat`, `tlp`, `title`, `nama_aplikasi`, `logo`, `copy_right`, `versi`, `tahun`) VALUES
(1, 'SMART Research Institute', NULL, '', 'Hotline SMARTRI', 'hotlinesmartri', 'AdminLTELogo1.png', 'Copy Right &copy;', '1.0', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `id` int(5) NOT NULL,
  `ref_number` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `intervention` varchar(30) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `position` varchar(30) NOT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `region` varchar(30) NOT NULL,
  `wa_requestor` varchar(15) DEFAULT NULL,
  `wa_manager` varchar(15) DEFAULT NULL,
  `date_request` date NOT NULL,
  `description` text NOT NULL,
  `description_date` date DEFAULT NULL,
  `description_location` varchar(30) NOT NULL,
  `description_method` varchar(21) NOT NULL,
  `photo1` text NOT NULL,
  `photo2` text NOT NULL,
  `photo3` text NOT NULL,
  `photo4` text NOT NULL,
  `photo5` text NOT NULL,
  `keterangan_photo1` text NOT NULL,
  `keterangan_photo2` text NOT NULL,
  `keterangan_photo3` text NOT NULL,
  `keterangan_photo4` text NOT NULL,
  `keterangan_photo5` text NOT NULL,
  `supporting_document` text NOT NULL,
  `keterangan_document` text NOT NULL,
  `received_by` varchar(40) DEFAULT NULL,
  `wa_receivedby` varchar(21) NOT NULL,
  `received_date` date DEFAULT NULL,
  `forward_depthead` varchar(40) DEFAULT NULL,
  `wa_depthead` varchar(21) NOT NULL,
  `forward_date` date DEFAULT NULL,
  `responsedone_section` varchar(50) DEFAULT NULL,
  `responsedone_namasection` varchar(50) NOT NULL,
  `wa_responsedonesection` varchar(21) DEFAULT NULL,
  `responsedone_staff` varchar(40) DEFAULT NULL,
  `responsedone_namastaff` varchar(50) NOT NULL,
  `wa_responsedonestaff` varchar(21) NOT NULL,
  `responsedone_date` date DEFAULT NULL,
  `fieldvisitdone_staff1` varchar(40) DEFAULT NULL,
  `fieldvisitdone_staff2` varchar(40) NOT NULL,
  `fieldvisitdone_staff3` varchar(40) NOT NULL,
  `fieldvisitdone_date` date DEFAULT NULL,
  `recommendation_staff1` varchar(40) DEFAULT NULL,
  `recommendation_staff2` varchar(50) DEFAULT NULL,
  `recommendation_staff3` varchar(50) DEFAULT NULL,
  `recommendation_date` date DEFAULT NULL,
  `wa_fv1` varchar(21) NOT NULL,
  `wa_fv2` varchar(21) NOT NULL,
  `wa_fv3` varchar(21) NOT NULL,
  `wa_r1` varchar(21) NOT NULL,
  `wa_r2` varchar(21) NOT NULL,
  `wa_r3` varchar(21) NOT NULL,
  `diagnostic_date` date DEFAULT NULL,
  `actual_day_remaining` int(4) DEFAULT NULL,
  `delivery_status` text DEFAULT NULL,
  `diagnostic_location` varchar(40) DEFAULT NULL,
  `diagnostic_staff` varchar(50) DEFAULT NULL,
  `diagnostic_method` varchar(40) DEFAULT NULL,
  `diagnostic_issue` text DEFAULT NULL,
  `diagnostic_estimationimpact` text DEFAULT NULL,
  `diagnostic_nothingdone` text DEFAULT NULL,
  `diagnostic_photo1` text NOT NULL,
  `diagnostic_photo2` text NOT NULL,
  `diagnostic_photo3` text NOT NULL,
  `diagnostic_photo4` text NOT NULL,
  `diagnostic_des1` text NOT NULL,
  `diagnostic_des2` text NOT NULL,
  `diagnostic_des3` text NOT NULL,
  `diagnostic_des4` text NOT NULL,
  `actionplan_preventiveaction` text DEFAULT NULL,
  `actionplan_preventive_photo1` text DEFAULT NULL,
  `actionplan_preventive_photo2` text DEFAULT NULL,
  `actionplan_preventive_photo3` text DEFAULT NULL,
  `actionplan_preventive_photo4` text DEFAULT NULL,
  `actionplan_preventive_des1` text DEFAULT NULL,
  `actionplan_preventive_des2` text DEFAULT NULL,
  `actionplan_preventive_des3` text DEFAULT NULL,
  `actionplan_preventive_des4` text DEFAULT NULL,
  `actionplan_correctiveplan` text DEFAULT NULL,
  `actionplan_corrective_photo1` text DEFAULT NULL,
  `actionplan_corrective_photo2` text DEFAULT NULL,
  `actionplan_corrective_photo3` text DEFAULT NULL,
  `actionplan_corrective_photo4` text DEFAULT NULL,
  `actionplan_corrective_des1` text DEFAULT NULL,
  `actionplan_corrective_des2` text DEFAULT NULL,
  `actionplan_corrective_des3` text DEFAULT NULL,
  `actionplan_corrective_des4` text DEFAULT NULL,
  `actionplan_approved` varchar(3) DEFAULT NULL,
  `actionplan_approvedby` varchar(40) DEFAULT NULL,
  `actionplan_approveddate` date DEFAULT NULL,
  `readiness_equipment` varchar(5) DEFAULT NULL,
  `readiness_declaration` varchar(5) DEFAULT NULL,
  `readiness_obstacles` text DEFAULT NULL,
  `followup_method` varchar(40) DEFAULT NULL,
  `followup_location` varchar(40) DEFAULT NULL,
  `followup_researchprogram` varchar(5) DEFAULT NULL,
  `followup_by` varchar(40) DEFAULT NULL,
  `followup_pic` varchar(40) DEFAULT NULL,
  `followup_date` date DEFAULT NULL,
  `followup_frequency` int(5) DEFAULT NULL,
  `followup_estatedate` date NOT NULL,
  `followup_estatefrequency` varchar(5) DEFAULT NULL,
  `followup_otherpic` varchar(40) DEFAULT NULL,
  `followup_otherdate` date DEFAULT NULL,
  `followup_otherfrequency` varchar(5) DEFAULT NULL,
  `followup_training` varchar(5) DEFAULT NULL,
  `followup_issuemcar` varchar(5) DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `evaluation_realization` varchar(20) DEFAULT NULL,
  `evaluation_feedbackestatestars` varchar(5) DEFAULT NULL,
  `evaluation_feedbackestatecomments` text DEFAULT NULL,
  `evaluation_feedbacksmartri` text DEFAULT NULL,
  `verification_status` varchar(40) DEFAULT NULL,
  `verification_emdate` date DEFAULT NULL,
  `verification_emremark` text NOT NULL,
  `verification_smartridate` date DEFAULT NULL,
  `verificationsmartri_remark` text NOT NULL,
  `verification_closing` varchar(5) DEFAULT NULL,
  `verification_closingdate` date DEFAULT NULL,
  `reportdepthead` int(1) NOT NULL DEFAULT 0,
  `reportdivhead` int(1) NOT NULL DEFAULT 0,
  `reportmanager` int(1) NOT NULL DEFAULT 0,
  `reportother` int(1) NOT NULL DEFAULT 0,
  `forward_status` int(1) NOT NULL DEFAULT 0,
  `responsedone_status` int(1) NOT NULL DEFAULT 0,
  `diagnostic_status` int(1) NOT NULL DEFAULT 0,
  `actionplan_status` int(1) NOT NULL DEFAULT 0,
  `approval_status` int(1) NOT NULL DEFAULT 0,
  `readiness_status` int(1) NOT NULL DEFAULT 0,
  `followup_status` int(11) NOT NULL,
  `evaluation_status` int(1) NOT NULL DEFAULT 0,
  `evaluationsmartri_status` int(1) NOT NULL DEFAULT 0,
  `verificationem_status` int(1) NOT NULL DEFAULT 0,
  `verificationsmartri_status` int(1) NOT NULL DEFAULT 0,
  `verificationclosing_status` int(1) NOT NULL DEFAULT 0,
  `distribution_status` int(1) NOT NULL DEFAULT 0,
  `status_final` int(2) NOT NULL DEFAULT 0,
  `tahun` int(4) NOT NULL,
  `progress_status` varchar(25) NOT NULL DEFAULT '0',
  `document` text NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `edit_diagnostic_date` date DEFAULT NULL,
  `readiness_rev` int(2) NOT NULL DEFAULT 0,
  `rev1_diagnostic_date` date DEFAULT NULL,
  `rev1_diagnostic_location` varchar(40) DEFAULT NULL,
  `rev1_diagnostic_staff` varchar(50) DEFAULT NULL,
  `rev1_diagnostic_method` varchar(40) DEFAULT NULL,
  `rev1_diagnostic_issue` text DEFAULT NULL,
  `rev1_diagnostic_estimationimpact` text DEFAULT NULL,
  `rev1_diagnostic_nothingdone` text DEFAULT NULL,
  `rev1_diagnostic_photo1` text NOT NULL,
  `rev1_diagnostic_photo2` text NOT NULL,
  `rev1_diagnostic_photo3` text NOT NULL,
  `rev1_diagnostic_photo4` text NOT NULL,
  `rev1_diagnostic_des1` text NOT NULL,
  `rev1_diagnostic_des2` text NOT NULL,
  `rev1_diagnostic_des3` text NOT NULL,
  `rev1_diagnostic_des4` text NOT NULL,
  `rev1_actionplan_preventiveaction` text DEFAULT NULL,
  `rev1_actionplan_correctiveplan` text DEFAULT NULL,
  `rev1_actionplan_approvedby` varchar(40) DEFAULT NULL,
  `rev1_actionplan_approveddate` date DEFAULT NULL,
  `rev1_readiness_equipment` varchar(5) DEFAULT NULL,
  `rev1_readiness_declaration` varchar(5) DEFAULT NULL,
  `rev1_readiness_obstacles` text DEFAULT NULL,
  `rev1_diagnostic_status` int(1) NOT NULL DEFAULT 0,
  `rev1_actionplan_status` int(1) NOT NULL DEFAULT 0,
  `rev1_approval_status` int(1) NOT NULL DEFAULT 0,
  `rev1_readiness_status` int(1) NOT NULL DEFAULT 0,
  `rev1_followup_status` int(11) NOT NULL,
  `rev1_evaluation_status` int(1) NOT NULL DEFAULT 0,
  `rev1_evaluationsmartri_status` int(1) NOT NULL DEFAULT 0,
  `rev1_verificationem_status` int(1) NOT NULL DEFAULT 0,
  `rev1_verificationsmartri_status` int(1) NOT NULL DEFAULT 0,
  `readinesssuggestrev_statuss` int(1) NOT NULL DEFAULT 0,
  `rev1_progress_status` int(1) NOT NULL DEFAULT 0,
  `rev2_diagnostic_date` date DEFAULT NULL,
  `rev2_diagnostic_location` text NOT NULL,
  `rev2_diagnostic_staff` text NOT NULL,
  `rev2_diagnostic_method` text NOT NULL,
  `rev2_diagnostic_issue` text NOT NULL,
  `rev2_diagnostic_estimationimpact` text NOT NULL,
  `rev2_diagnostic_nothingdone` text NOT NULL,
  `rev2_diagnostic_photo1` text NOT NULL,
  `rev2_diagnostic_photo2` text NOT NULL,
  `rev2_diagnostic_photo3` text NOT NULL,
  `rev2_diagnostic_photo4` text NOT NULL,
  `rev2_diagnostic_des1` text NOT NULL,
  `rev2_diagnostic_des2` text NOT NULL,
  `rev2_diagnostic_des3` text NOT NULL,
  `rev2_diagnostic_des4` text NOT NULL,
  `rev2_actionplan_preventiveaction` text DEFAULT NULL,
  `rev2_actionplan_correctiveplan` text DEFAULT NULL,
  `rev2_actionplan_approvedby` varchar(40) DEFAULT NULL,
  `rev2_actionplan_approveddate` date DEFAULT NULL,
  `rev2_readiness_equipment` varchar(5) DEFAULT NULL,
  `rev2_readiness_declaration` varchar(5) DEFAULT NULL,
  `rev2_readiness_obstacles` text DEFAULT NULL,
  `rev2_followup_method` varchar(40) DEFAULT NULL,
  `rev2_followup_location` varchar(40) DEFAULT NULL,
  `rev2_followup_researchprogram` varchar(5) DEFAULT NULL,
  `rev2_followup_smartripic` varchar(40) DEFAULT NULL,
  `rev2_followup_smartridate` date DEFAULT NULL,
  `rev2_followup_smartriferquency` int(5) DEFAULT NULL,
  `rev2_followup_estatestaff` varchar(40) DEFAULT NULL,
  `rev2_followup_estatedate` date DEFAULT NULL,
  `rev2_followup_estatefrequency` varchar(5) DEFAULT NULL,
  `rev2_followup_otherpic` varchar(40) DEFAULT NULL,
  `rev2_followup_otherdate` date DEFAULT NULL,
  `rev2_followup_otherfrequency` varchar(5) DEFAULT NULL,
  `rev2_followup_training` varchar(5) DEFAULT NULL,
  `rev2_followup_issuemcar` varchar(5) DEFAULT NULL,
  `rev2_evaluation_date` date DEFAULT NULL,
  `rev2_evaluation_realization` varchar(20) DEFAULT NULL,
  `rev2_evaluation_feedbackestatestars` varchar(5) DEFAULT NULL,
  `rev2_evaluation_feedbackestatecomments` text DEFAULT NULL,
  `rev2_evaluation_feedbacksmartri` text DEFAULT NULL,
  `rev2_verification_status` varchar(40) DEFAULT NULL,
  `rev2_verification_emdate` date DEFAULT NULL,
  `rev2_verification_emremark` text NOT NULL,
  `rev2_verification_smartridate` date DEFAULT NULL,
  `rev2_verification_smartriremark` text NOT NULL,
  `rev2_verification_closing` varchar(5) DEFAULT NULL,
  `rev2_verification_closingdate` date DEFAULT NULL,
  `rev2_reportdepthead` int(1) NOT NULL DEFAULT 0,
  `rev2_reportdivhead` int(1) NOT NULL DEFAULT 0,
  `readinesssuggestrev_status` int(1) NOT NULL DEFAULT 0,
  `verificationsmartrisuggestrev_status` int(1) NOT NULL DEFAULT 0,
  `rev2_progress_stddddatus` int(3) NOT NULL DEFAULT 0,
  `rev2_diagnostic_status` int(1) NOT NULL DEFAULT 0,
  `rev2_actionplan_status` int(1) NOT NULL DEFAULT 0,
  `rev2_approval_status` int(1) NOT NULL DEFAULT 0,
  `rev2_readiness_status` int(1) NOT NULL DEFAULT 0,
  `rev2_followup_status` int(11) NOT NULL,
  `rev2_evaluation_status` int(1) NOT NULL DEFAULT 0,
  `rev2_evaluationsmartri_status` int(1) NOT NULL DEFAULT 0,
  `rev2_verificationem_status` int(1) NOT NULL DEFAULT 0,
  `rev2_verificationsmartri_status` int(1) NOT NULL DEFAULT 0,
  `rev2_verificationclosing_status` int(1) NOT NULL DEFAULT 0,
  `rev2_progress_status` int(1) NOT NULL DEFAULT 0,
  `feedbackmanager` text NOT NULL,
  `feedbackdepthead` text NOT NULL,
  `feedbackdivhead` text NOT NULL,
  `revisi_status` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`id`, `ref_number`, `tanggal`, `intervention`, `full_name`, `position`, `unit`, `region`, `wa_requestor`, `wa_manager`, `date_request`, `description`, `description_date`, `description_location`, `description_method`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `keterangan_photo1`, `keterangan_photo2`, `keterangan_photo3`, `keterangan_photo4`, `keterangan_photo5`, `supporting_document`, `keterangan_document`, `received_by`, `wa_receivedby`, `received_date`, `forward_depthead`, `wa_depthead`, `forward_date`, `responsedone_section`, `responsedone_namasection`, `wa_responsedonesection`, `responsedone_staff`, `responsedone_namastaff`, `wa_responsedonestaff`, `responsedone_date`, `fieldvisitdone_staff1`, `fieldvisitdone_staff2`, `fieldvisitdone_staff3`, `fieldvisitdone_date`, `recommendation_staff1`, `recommendation_staff2`, `recommendation_staff3`, `recommendation_date`, `wa_fv1`, `wa_fv2`, `wa_fv3`, `wa_r1`, `wa_r2`, `wa_r3`, `diagnostic_date`, `actual_day_remaining`, `delivery_status`, `diagnostic_location`, `diagnostic_staff`, `diagnostic_method`, `diagnostic_issue`, `diagnostic_estimationimpact`, `diagnostic_nothingdone`, `diagnostic_photo1`, `diagnostic_photo2`, `diagnostic_photo3`, `diagnostic_photo4`, `diagnostic_des1`, `diagnostic_des2`, `diagnostic_des3`, `diagnostic_des4`, `actionplan_preventiveaction`, `actionplan_preventive_photo1`, `actionplan_preventive_photo2`, `actionplan_preventive_photo3`, `actionplan_preventive_photo4`, `actionplan_preventive_des1`, `actionplan_preventive_des2`, `actionplan_preventive_des3`, `actionplan_preventive_des4`, `actionplan_correctiveplan`, `actionplan_corrective_photo1`, `actionplan_corrective_photo2`, `actionplan_corrective_photo3`, `actionplan_corrective_photo4`, `actionplan_corrective_des1`, `actionplan_corrective_des2`, `actionplan_corrective_des3`, `actionplan_corrective_des4`, `actionplan_approved`, `actionplan_approvedby`, `actionplan_approveddate`, `readiness_equipment`, `readiness_declaration`, `readiness_obstacles`, `followup_method`, `followup_location`, `followup_researchprogram`, `followup_by`, `followup_pic`, `followup_date`, `followup_frequency`, `followup_estatedate`, `followup_estatefrequency`, `followup_otherpic`, `followup_otherdate`, `followup_otherfrequency`, `followup_training`, `followup_issuemcar`, `evaluation_date`, `evaluation_realization`, `evaluation_feedbackestatestars`, `evaluation_feedbackestatecomments`, `evaluation_feedbacksmartri`, `verification_status`, `verification_emdate`, `verification_emremark`, `verification_smartridate`, `verificationsmartri_remark`, `verification_closing`, `verification_closingdate`, `reportdepthead`, `reportdivhead`, `reportmanager`, `reportother`, `forward_status`, `responsedone_status`, `diagnostic_status`, `actionplan_status`, `approval_status`, `readiness_status`, `followup_status`, `evaluation_status`, `evaluationsmartri_status`, `verificationem_status`, `verificationsmartri_status`, `verificationclosing_status`, `distribution_status`, `status_final`, `tahun`, `progress_status`, `document`, `company_email`, `edit_diagnostic_date`, `readiness_rev`, `rev1_diagnostic_date`, `rev1_diagnostic_location`, `rev1_diagnostic_staff`, `rev1_diagnostic_method`, `rev1_diagnostic_issue`, `rev1_diagnostic_estimationimpact`, `rev1_diagnostic_nothingdone`, `rev1_diagnostic_photo1`, `rev1_diagnostic_photo2`, `rev1_diagnostic_photo3`, `rev1_diagnostic_photo4`, `rev1_diagnostic_des1`, `rev1_diagnostic_des2`, `rev1_diagnostic_des3`, `rev1_diagnostic_des4`, `rev1_actionplan_preventiveaction`, `rev1_actionplan_correctiveplan`, `rev1_actionplan_approvedby`, `rev1_actionplan_approveddate`, `rev1_readiness_equipment`, `rev1_readiness_declaration`, `rev1_readiness_obstacles`, `rev1_diagnostic_status`, `rev1_actionplan_status`, `rev1_approval_status`, `rev1_readiness_status`, `rev1_followup_status`, `rev1_evaluation_status`, `rev1_evaluationsmartri_status`, `rev1_verificationem_status`, `rev1_verificationsmartri_status`, `readinesssuggestrev_statuss`, `rev1_progress_status`, `rev2_diagnostic_date`, `rev2_diagnostic_location`, `rev2_diagnostic_staff`, `rev2_diagnostic_method`, `rev2_diagnostic_issue`, `rev2_diagnostic_estimationimpact`, `rev2_diagnostic_nothingdone`, `rev2_diagnostic_photo1`, `rev2_diagnostic_photo2`, `rev2_diagnostic_photo3`, `rev2_diagnostic_photo4`, `rev2_diagnostic_des1`, `rev2_diagnostic_des2`, `rev2_diagnostic_des3`, `rev2_diagnostic_des4`, `rev2_actionplan_preventiveaction`, `rev2_actionplan_correctiveplan`, `rev2_actionplan_approvedby`, `rev2_actionplan_approveddate`, `rev2_readiness_equipment`, `rev2_readiness_declaration`, `rev2_readiness_obstacles`, `rev2_followup_method`, `rev2_followup_location`, `rev2_followup_researchprogram`, `rev2_followup_smartripic`, `rev2_followup_smartridate`, `rev2_followup_smartriferquency`, `rev2_followup_estatestaff`, `rev2_followup_estatedate`, `rev2_followup_estatefrequency`, `rev2_followup_otherpic`, `rev2_followup_otherdate`, `rev2_followup_otherfrequency`, `rev2_followup_training`, `rev2_followup_issuemcar`, `rev2_evaluation_date`, `rev2_evaluation_realization`, `rev2_evaluation_feedbackestatestars`, `rev2_evaluation_feedbackestatecomments`, `rev2_evaluation_feedbacksmartri`, `rev2_verification_status`, `rev2_verification_emdate`, `rev2_verification_emremark`, `rev2_verification_smartridate`, `rev2_verification_smartriremark`, `rev2_verification_closing`, `rev2_verification_closingdate`, `rev2_reportdepthead`, `rev2_reportdivhead`, `readinesssuggestrev_status`, `verificationsmartrisuggestrev_status`, `rev2_progress_stddddatus`, `rev2_diagnostic_status`, `rev2_actionplan_status`, `rev2_approval_status`, `rev2_readiness_status`, `rev2_followup_status`, `rev2_evaluation_status`, `rev2_evaluationsmartri_status`, `rev2_verificationem_status`, `rev2_verificationsmartri_status`, `rev2_verificationclosing_status`, `rev2_progress_status`, `feedbackmanager`, `feedbackdepthead`, `feedbackdivhead`, `revisi_status`) VALUES
(80, '22cdDZ', '2022-11-15', 'Crop Protection', 'Chyntia', 'Ast Research', 'LIBZ', 'SIAK', '085219225991', '082138128476', '2022-11-15', '<p>Bibit ramet terserang culvuraria</p>\r\n', '2022-11-15', 'LIBZ Nursery', 'Field visit', 'd6dca4e0d5ddcae8141463c904197fd7.jpg', '', '', '', '', 'Culvuraria di bibitan', '', '', '', '', '', '', 'Admin', '', '2022-11-16', 'Crop Protection Dept', '081277410930', '2022-11-19', '28', 'Phytopathology section', '081365417208', '28', 'Achmad Wahyu S.', '081365417208', '2022-11-16', 'Rizky Rajabillah Purwoko', '', '', '2022-11-17', 'Rizky Rajabillah Purwoko', '', '', '2022-11-17', '081374929610', '', '', '081374929610', '', '', '2022-11-19', -1, 'On time', 'Bibitan Libz', 'Achmad Wahyu S.', 'Field Observation', '<p>Bibitan Pervobaan terserang bercak daun Curvularia spp.  Sebagian bibit menunjukkan tendensi gejala parah...dan ada kecenderungan clone tertentu lebih rentan</p>\r\n', '<p>Dapat beresiko meningkatkan persentase bibit afkir yg mengakibatkan hilang data</p>\r\n', '<p>Serangan akan menyebar lebih cepat...sehinggapersentase bibit afkir akan meningkat dan kehilangan data akan meningkat</p>\r\n', '', '', '', '', 'Foto bibit dengan serangan Curvularia kategori berat...aplikasi fungisida terakhir tg 17 November 2022', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022, '2', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0),
(82, '228TZG', '2022-11-16', 'Nutrition Deficiency', 'Adin Afiyata', 'CSE Officer', 'SRKE', 'SIAK', '081327320380', '082283968121', '2022-11-16', '<p>Ditemukan beberapa ramet di MN nomer clone tertentu memiliki keragaan warna daun hijau cerah berbeda dengan clone lain dalam satu plot MN. Mohon bantuan apakah ini gejala defisiensi atau ada efek genetik dari nomer clone tersebut.</p>\r\n', '2022-11-16', 'Bibitan SRKE', 'Field visit', '0ba4b23195085f05e98bd2333a9b9f76.jpg', '', '', '', '', 'Ramet diduga defisiensi pada nomer clone tertentu', '', '', '', '', '', '', 'Admin', '', '2022-11-16', 'Field Operational and Extension Services', '081367077601', '2022-11-18', '42', 'Main Station FOESD', '082138128476', '42', 'Pramusita Yoga Daniswara', '082138128476', '2022-11-16', 'Medi Darminto', 'Chyntia Novanti', '', '2022-11-19', 'Pramusita Yoga Daniswara', '', '', '2022-12-09', '081366804771', '085219225991', '', '082138128476', '', '', '2022-11-18', -1, 'On time', 'Plot A-11 Nursery SRKE', 'Pramusita Yoga Daniswara', 'Field Observation', '<p>Tanaman clonal di bibitab MN umur 18 BST mengalami gejala visual anak daun pada pelepah sawit mengalami hijau pucat dan semakin lama daun menguning dan nekrosis seperti gejala N daun. </p>\r\n\r\n<p>Gejala tersebut hanya terjadi 1 spot dengan no clone S.1544. Jumlah bibit MN visual defisiensi +- 30 bibit. </p>\r\n\r\n<p>Informasi Asisten bibitan sudah aplikasi NPK12 50gr setiap 2 bulan dan terakhir aplikasi bulan Oktober. </p>\r\n\r\n<p>Follow up :</p>\r\n\r\n<ul>\r\n <li>Perlu adanya crosscheck dgn no clone S. 1544. di lokasi bibitan yg lain apakah terjadi gejala yang sama (PIC. Bp Adin Afiyata) </li>\r\n <li>Mengambil sampel LSU pada no clone S. 1544 untuk mengetahui defisiensi (PIC. P. Y. Daniswara) </li>\r\n</ul>\r\n', '<ul>\r\n <li>Pertumbuhan tanaman pada waktu TBM terhambat sehingga performa pertumbuhan jelek. </li>\r\n</ul>\r\n', '<ul>\r\n <li>Bibit MN akan mati sebelum transplanting atau sesudah ditanam dilapangan menyebabkan tanaman harus disisip. </li>\r\n</ul>\r\n', 'cd3bea2511691d572e26ff88abfbba86.jpg', '79c9d73e3781241f2a73a090a1b1d21a.jpg', '8aa69d98d1a7cad390c76c73a6afedb3.jpg', '', 'Tanaman bibitan MN gejala visual defisiensi N. ', 'no clonal S. 1544 mengalami gejala visual N', 'Beberapa pokok dengan no clonal S. 1544  terlihat visual hijau pucat', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022, '2', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0),
(83, '22tIFs', '2022-11-16', 'Crop Protection', 'Yendra P. Setyawan', 'Asisten divisi', 'LIBE', 'SIAK', '082249255480', '081277410930', '2022-11-16', '<p>Terdapat polulasi ulat kantong jumlah 10-20 ekor per pelepah</p>\r\n\r\n<p>Ukuran ulat dominan kecil</p>\r\n\r\n<p>Luas serangan 40 ha</p>\r\n', '2022-11-16', 'Divisi 1 LIBE', 'Sampling', '78d80d3d64bebd7ac4d77dbfdb1d07b1.jpg', '', '', '', '', '', '', '', '', '', '', '', 'Admin', '', '2022-11-16', 'Crop Protection Dept', '081277410930', '2022-11-24', '24', 'Crop Protection', '081277410930', '24', 'Mohd. Naim', '081277410930', '2022-11-23', 'Syaiful Fahmi', '', '', '2022-11-20', 'Syaiful Fahmi', '', '', '2022-11-24', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022, '1a', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0),
(84, '22idJu', '2022-11-16', 'Crop Protection', 'Hasbullah ', 'Sect head MNM', 'LIBZ', 'SIAK', '081236829157', '', '2022-11-16', '<p>Spot kuning dengan titik coklat di tengah pada daun pelepah tua. Spot kuning tersebut menyebar dari pangkal ke ujung daun dan hanya visible dilihat dari permukaan daun bagian bawah.</p>\r\n', '2022-11-16', 'Libe blok b-7', 'Field visit', '5824b90b6b6059541b1c4aba445984fa.jpeg', 'bb45eebc95a9fe089e735908abe8a495.jpeg', 'db6a538864fe0cd4272d2027fd0edd26.jpeg', '', '', 'Visible dari  bawah daun', 'full pelepah', ' pelepah', '', '', '', '', 'Admin', '', '2022-11-16', 'Crop Protection Dept', '081277410930', '2022-11-24', '28', 'Phytopathology section', '081365417208', '28', 'Achmad Wahyu S.', '081365417208', '2022-11-26', 'Achmad Wahyu S.', '', '', '2022-11-20', 'Achmad Wahyu S.', '', '', '2022-11-24', '', '', '', '', '', '', '2022-11-22', -3, 'On time', 'LIBE Div 1', 'Mohd. Naim', 'Field Observation', '<p>Serangan Alga Merah di daun tua tanaman kelapa sawit TM</p>\r\n', '<p>Secara normal tidak berpengatuh nyata</p>\r\n', '<p>Kondisi yang wajar terjadi di kebun...Tidak ada madalah  sepanjang standard budidaya terpenuhi</p>\r\n', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022, '1a', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0),
(85, '22e5uT', '2022-11-19', 'Crop Protection', 'P. Y. Daniswara', 'Field Coordinator 5', 'SRKE', 'SIAK', '082138128476', '081367077601', '2022-11-19', '<p>Bibitan Clonal umur 7 BST di MN plot A-17 terserang curvularia. </p>\r\n\r\n<p>Sudah dilakukan aplikasi 2 minggu bergantian (dithane, elario, benstar, tiflo, score) menggunakan aplikasi Drone. serangan curvularia masih tinggi. </p>\r\n', '2022-11-19', 'Nursery - SRKE', 'Field visit', '597ec4dd4f47ce68b8717264077eccf4.jpg', 'a5395356f4108d67112b9bce06437bf1.jpg', '', '', '', 'Tanaman terserang Curvularia', 'Kondisi yang terserang curvularia terjadi  spot spot  dalam plot ', '', '', '', '', '', 'Admin', '', '2022-11-19', 'Crop Protection Dept', '081277410930', '2022-11-27', '28', 'Phytopathology section', '081365417208', '28', 'Achmad Wahyu S.', '081365417208', '2022-11-23', 'Rizky Rajabillah Purwoko', '', '', '2022-11-23', 'Achmad Wahyu S.', '', '', '2022-11-27', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022, '1a', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0),
(86, '22GPfu', '2022-11-25', 'Nutrition Deficiency', 'Sri Imriani Pulungan ', 'Staff Plant Breeding ', 'LIBZ', 'SIAK', '082213810893', '', '2022-11-25', '<p>Sebagian tajuk tanaman agak kekuningan</p>\r\n', '2022-11-25', 'LIBZ Nursery', 'Field visit', 'eae416e556c02925c9b2d42467f1af4b.jpg', '', '', '', '', '', '', '', '', '', '', '', 'Admin', '', '2022-11-28', 'Field Operational and Extension Services', '081367077601', '2022-11-27', '17', 'Sub Station FOESD', '082272251586', '51', 'Chyntia Novanti', '085219225991', '2022-11-28', 'Chyntia Novanti', '', '', '2022-11-28', 'Hartono', '', '', '2022-12-28', '085219225991', '', '', '081367077601', '', '', '2022-11-28', 1, 'Overdue', 'NURSERY LIBZ', 'Chyntia Novanti', 'Field Observation', '<p>Tanaman umur 19 BST</p>\r\n\r\n<p>Dari fisik terlihat defisiensi N dan Mg, Ringan</p>\r\n', '<p>Berpengaruh terhadap pertumbuhan</p>\r\n', '<p>Berpengaruh terhadap pertumbuhan dan produksi di trial</p>\r\n', '', '', '', '', '', '', '', '', '<p>Monitoring kondisi daun secara rutin</p>\r\n', '', '', '', '', NULL, NULL, NULL, NULL, '<p>Extra 15 kieserite di tanah polibag.</p>\r\n\r\n<p>Extra urea by foliar. 8gr per 15 liter. Volume semprote per pohon sd seluruh daun basah</p>\r\n', '', '', '', '', NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-11-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022, '2b', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0),
(87, '22kyiG', '2022-12-05', 'Crop Protection', 'Hasbullah ', 'Sect head MNM', 'LIBZ', 'SIAK', '081236829157', '', '2022-12-05', '<p>1 Pokok terserang busuk pucuk (spear rot). Seperti pada photo terlampir </p>\r\n', '2022-12-05', 'Libe C61', 'Field visit', '890a56fd5ff7a3d206551758e51547cb.jpeg', '04dcb75acb32cdcd3c1c28f25f8cec88.jpeg', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '0000-00-00', NULL, '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2022, '0', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fiadmin`
--

CREATE TABLE `tbl_fiadmin` (
  `id` int(3) NOT NULL,
  `wa_fiadmin` varchar(21) NOT NULL,
  `wa_divhead` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fiadmin`
--

INSERT INTO `tbl_fiadmin` (`id`, `wa_fiadmin`, `wa_divhead`) VALUES
(1, '08888991876', '0811757638');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_listdept`
--

CREATE TABLE `tbl_listdept` (
  `id` int(3) NOT NULL,
  `id_dept` int(3) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `wa_depthead` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_listdept`
--

INSERT INTO `tbl_listdept` (`id`, `id_dept`, `dept_name`, `nama`, `wa_depthead`) VALUES
(1, 1, 'Agronomy Dept', 'Pujianto', '081268897334'),
(2, 2, 'Crop Protection Dept', 'Mohd. Naim', '081277410930'),
(3, 3, 'Data Intelligence and Analytics Dept', 'Divo Dharma Silalahi', '085211916330'),
(4, 4, 'Field Operational and Extension Services Dept', 'Hartono', '081367077601'),
(5, 5, 'Plant Breeding Dept', 'Yong Yit Yuan', '08117571951'),
(6, 6, 'Sustainability Research Dept', 'Bram Hadiwijaya', '081268696928');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_listkebun`
--

CREATE TABLE `tbl_listkebun` (
  `id_kebun` int(3) NOT NULL,
  `psm` int(3) NOT NULL,
  `id_region` int(3) NOT NULL,
  `region` varchar(50) NOT NULL,
  `kebun` varchar(10) NOT NULL,
  `nama_kebun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_listkebun`
--

INSERT INTO `tbl_listkebun` (`id_kebun`, `psm`, `id_region`, `region`, `kebun`, `nama_kebun`) VALUES
(1, 1, 1, 'SUMUT', 'ADPE', 'Adipati'),
(2, 1, 1, 'SUMUT', 'KULE', 'Kanopan Ulu'),
(3, 1, 1, 'SUMUT', 'LPYE', 'Langga Payung'),
(4, 1, 1, 'SUMUT', 'NRME', 'Normark'),
(5, 1, 1, 'SUMUT', 'PBNE', 'Paya Baung'),
(6, 1, 1, 'SUMUT', 'PHLE', 'Padang Halaban'),
(7, 1, 1, 'SUMUT', 'PRNE', 'Pernantian'),
(8, 1, 2, 'JAMBI 1', ' BMRE', 'Batang Merangin'),
(9, 1, 2, 'JAMBI 1', 'BGDE', 'Batang Gading'),
(10, 1, 2, 'JAMBI 1', 'BNGE', 'Bangko Est'),
(11, 1, 2, 'JAMBI 1', 'PLKE', 'Plakar'),
(12, 1, 3, 'JAMBI 1 PLASMA', 'BBNA', 'Bukit Bungkul'),
(13, 1, 3, 'JAMBI 1 PLASMA', 'BGDA', 'Batang Gading'),
(14, 1, 3, 'JAMBI 1 PLASMA', 'BNGP', 'Bangko Pls'),
(15, 1, 3, 'JAMBI 1 PLASMA', 'KUJP', 'Kubang Ujo Pls'),
(16, 1, 3, 'JAMBI 1 PLASMA', 'PMNP', 'Pamenang Pls'),
(17, 1, 3, 'JAMBI 1 PLASMA', 'TSRA', 'Tanjung Rusa'),
(18, 1, 4, 'JAMBI 2', 'KILE', 'Muara Kilis'),
(19, 1, 4, 'JAMBI 2', 'SAJE', 'Sungai Air Jernih'),
(20, 1, 4, 'JAMBI 2', 'SBKE', 'Sungai Badak'),
(21, 1, 4, 'JAMBI 2', 'SBNE', 'Sungai Bengkal'),
(22, 1, 4, 'JAMBI 2', 'SMKE', 'Sungai Merak'),
(23, 1, 4, 'JAMBI 2', 'SMTA', ''),
(24, 1, 4, 'JAMBI 2', 'SMTE', 'Sungai Mentawak'),
(25, 1, 5, 'JAMBI 2 PLASMA', 'KILA', 'Muara Kilis KKPA'),
(26, 1, 5, 'JAMBI 2 PLASMA', 'SBNA', 'Sungai Bengkal Pls'),
(27, 2, 6, 'BABEL', 'BINE', 'Bukit Intan'),
(28, 2, 6, 'BABEL', 'BLSE', ''),
(29, 2, 6, 'BABEL', 'BMSE', 'Bukit Mas'),
(30, 2, 6, 'BABEL', 'BPAE', ''),
(31, 2, 6, 'BABEL', 'BPRE', 'Bukit Perak'),
(32, 2, 6, 'BABEL', 'BPTE', 'Bukit Permata'),
(33, 2, 6, 'BABEL', 'LWSE', 'Ledong West Selatan'),
(34, 2, 6, 'BABEL', 'LWUE', 'Ledong West Utara'),
(35, 2, 6, 'BABEL', 'TKME', 'Tanjung Kembiri'),
(36, 2, 6, 'BABEL', 'TRSE', 'Tanjung Rusa'),
(37, 2, 6, 'BABEL', 'TSWE', 'Tanjung Sawit'),
(38, 2, 7, 'BABEL PLASMA', 'TRSA', 'Tanjung Rusa pls'),
(39, 2, 7, 'BABEL PLASMA', 'TSWA', 'Tanjung Sawit Pls'),
(40, 2, 8, 'LAMPUNG', 'SBYE', 'Sungai Buaya'),
(41, 2, 8, 'LAMPUNG', 'SMRE', 'Sungai Merah'),
(42, 2, 9, 'LAMPUNG PLASMA', 'GABA', 'Gedung Aji Baru'),
(43, 2, 9, 'LAMPUNG PLASMA', 'GALA', 'Gedung Aji Lama'),
(44, 2, 9, 'LAMPUNG PLASMA', 'MSJA', 'Mesuji'),
(45, 2, 10, 'PAPUA', 'CNDE', 'Cendrawasih'),
(46, 2, 10, 'PAPUA', 'MMBE', 'Mambruk'),
(47, 2, 10, 'PAPUA', 'NURE', 'Nuri'),
(48, 2, 10, 'PAPUA', 'RJWE', 'Rajawali'),
(49, 2, 11, 'SUMSEL 1', 'BSWE', 'Bumi Sawit'),
(50, 2, 11, 'SUMSEL 1', 'MKNE', 'Muara Kandis'),
(51, 2, 11, 'SUMSEL 1', 'MTWE', 'Muara Tawas'),
(52, 2, 11, 'SUMSEL 1', 'SMSE', 'Sawit Mas'),
(53, 2, 12, 'SUMSEL 1 PLASMA', 'PNDA', 'Pendawa'),
(54, 2, 13, 'SUMSEL 2', 'SBGE', 'Sungai Bungur'),
(55, 2, 13, 'SUMSEL 2', 'SENE', 'Sungai Enim'),
(56, 2, 13, 'SUMSEL 2', 'SKME', 'Sungai Kikim'),
(57, 2, 13, 'SUMSEL 2', 'SLGE', 'Sungai Lingsing'),
(58, 2, 13, 'SUMSEL 2', 'SLME', 'Sungai Lematang'),
(59, 2, 13, 'SUMSEL 2', 'SMIE', 'Sungai Musi'),
(60, 2, 13, 'SUMSEL 2', 'SPGE', 'Sungai Pangi'),
(61, 2, 13, 'SUMSEL 2', 'SSLE', 'Sungai Saling'),
(62, 3, 14, 'KALSEL 1', 'BAME', 'Batu Ampar'),
(63, 3, 14, 'KALSEL 1', 'BMLE', 'Batu Mulia'),
(64, 3, 14, 'KALSEL 1', 'KNTE', 'Kintapura'),
(65, 3, 14, 'KALSEL 1', 'SKPE', 'Sungai Kupang'),
(66, 3, 14, 'KALSEL 1', 'SPNE', 'Sungai Panci'),
(67, 3, 14, 'KALSEL 1', 'TLTE', 'Tanah Laut'),
(68, 3, 15, 'KALSEL 1 PLASMA', 'SKPA', 'Sungai Kupang Pls'),
(69, 3, 15, 'KALSEL 1 PLASMA', 'SPNA', 'Sungai Panci Pls'),
(70, 3, 16, 'KALSEL 2', 'BKPE', 'Bukit Kapur'),
(71, 3, 16, 'KALSEL 2', 'PMKE', 'Pamukan'),
(72, 3, 16, 'KALSEL 2', 'SCNE', 'Sungai Cantung'),
(73, 3, 16, 'KALSEL 2', 'SMGE', 'Sungai Magalau'),
(74, 3, 16, 'KALSEL 2', 'SMUE', ''),
(75, 3, 16, 'KALSEL 2', 'SNKE', 'Senakin'),
(76, 3, 16, 'KALSEL 2', 'SWTE', 'Sawita'),
(77, 3, 17, 'KALSEL 2 PLASMA', 'SWTA', 'Sawita Pls'),
(78, 3, 18, 'KALTIM 1', 'GKME', 'Gunung Kombeng'),
(79, 3, 18, 'KALTIM 1', 'MWHE', 'Muara Wahau'),
(80, 3, 18, 'KALTIM 1', 'PMSE', 'Pantun Mas'),
(81, 3, 19, 'KALTIM 1 PLASMA', 'GKMA', 'Gunung Kombeng Pls'),
(82, 3, 20, 'KALTIM 2 PLASMA', 'JLYA', 'Jak Luay KKPA'),
(83, 3, 20, 'KALTIM 2 PLASMA', 'BSRA', 'Bukit Subur Pls'),
(84, 3, 20, 'KALTIM 2 PLASMA', 'RPNA', 'Rantau Panjang Pls'),
(85, 3, 21, 'KALTIM 2', 'BSRE', 'Bukit Subur'),
(86, 3, 21, 'KALTIM 2', 'JLYE', 'Jak Luay'),
(87, 3, 21, 'KALTIM 2', 'LBLE', 'Loh Buluh'),
(88, 3, 21, 'KALTIM 2', 'RPNE', 'Rantau Panjang'),
(89, 5, 22, 'SIAK', 'KNDE', 'Kandista'),
(90, 5, 22, 'SIAK', 'LIBE', 'Libo'),
(91, 5, 22, 'SIAK', 'NGLE', 'Nenggala'),
(92, 5, 22, 'SIAK', 'PLPE', 'Palapa'),
(93, 5, 22, 'SIAK', 'SRKE', 'Seirokan'),
(94, 5, 22, 'SIAK', 'SSME', 'Sam sam'),
(95, 5, 22, 'SIAK', 'UTNE', 'Ujung Tanjung'),
(96, 5, 22, 'SIAK', 'KSBA', 'Kp Sawit Mas Bersama'),
(97, 5, 22, 'SIAK', 'LIBZ', 'SMARTRI'),
(98, 5, 22, 'SIAK', 'SKJA', ''),
(99, 5, 23, 'KAMPAR INTI', 'DMSE', 'Dami Mas'),
(100, 5, 23, 'KAMPAR INTI', 'KJGE', 'Kijang'),
(101, 5, 23, 'KAMPAR INTI', 'NMAE', 'Naga Mas'),
(102, 5, 23, 'KAMPAR INTI', 'NSAE', 'Naga Sakti'),
(103, 5, 23, 'KAMPAR INTI', 'RBKE', 'Rama Bakti'),
(104, 5, 23, 'KAMPAR INTI', 'RRME', 'Rama Rama'),
(105, 5, 24, 'KAMPAR PLASMA', 'AJYP', 'Amartha Jaya Pls'),
(106, 5, 24, 'KAMPAR PLASMA', 'BRDA', 'Berkat Ridho Pls'),
(107, 5, 24, 'KAMPAR PLASMA', 'KJNP', 'Kijang Kencana Pls'),
(108, 5, 24, 'KAMPAR PLASMA', 'RRMA', 'Rama Rama KKPA'),
(109, 5, 24, 'KAMPAR PLASMA', 'STPA', 'Sungai Tapung Pls'),
(110, 5, 25, 'INDRAGIRI INTI', 'BPLE', 'Bumi Palma Lestari'),
(111, 5, 25, 'INDRAGIRI INTI', 'BPME', 'Bumi Palma '),
(112, 5, 25, 'INDRAGIRI INTI', 'IDSE', 'Indra Sakti'),
(113, 5, 26, 'INDRAGIRI', 'KHRE', ''),
(114, 5, 27, 'INDRAGIRI PLASMA', 'IDLA', 'Indra Lestari KKPA'),
(115, 5, 27, 'INDRAGIRI PLASMA', 'IDSA', 'Indra Sakti KKPA'),
(116, 5, 27, 'INDRAGIRI PLASMA', 'INDA', 'Indragiri KKPA'),
(117, 5, 27, 'INDRAGIRI PLASMA', 'KHRA', ''),
(118, 5, 27, 'INDRAGIRI PLASMA', 'KSJA', ''),
(119, 6, 28, 'KALTENG 1', 'HNAE', 'Hanau'),
(120, 6, 28, 'KALTENG 1', 'LNGE', 'Langadang'),
(121, 6, 28, 'KALTENG 1', 'MSAE', 'Medang Sari'),
(122, 6, 28, 'KALTENG 1', 'TMSE', 'Tasik Mas'),
(123, 6, 28, 'KALTENG 1', 'TPRE', 'Tanjung Paring'),
(124, 6, 29, 'KALTENG 2', 'BTGE', 'Bukit Tiga'),
(125, 6, 29, 'KALTENG 2', 'SRGE', 'Sungai Rungau'),
(126, 6, 29, 'KALTENG 2', 'SSRE', 'Sungai Seruyan'),
(127, 6, 29, 'KALTENG 2', 'TNGE', 'Tangar'),
(128, 6, 29, 'KALTENG 2', 'TRWE', 'Terawan'),
(129, 6, 30, 'KALTENG 3', 'LGGE', 'Lenggana'),
(130, 6, 30, 'KALTENG 3', 'MDUE', 'Muara Dua'),
(131, 6, 30, 'KALTENG 3', 'MNAE', 'Mandang'),
(132, 6, 30, 'KALTENG 3', 'PRDE', 'Perdana'),
(133, 6, 30, 'KALTENG 3', 'PURE', 'Puri'),
(134, 6, 30, 'KALTENG 3', 'SMLE', 'Semilar'),
(135, 6, 30, 'KALTENG 3', 'SMNE', 'Semandau'),
(136, 6, 30, 'KALTENG 3', 'SRDE', 'Seirindu'),
(137, 6, 31, 'KALTENG 4', 'KTYE', 'Katayang'),
(138, 6, 31, 'KALTENG 4', 'NHYE', 'Nahiyang'),
(139, 6, 31, 'KALTENG 4', 'SAYE', 'Sungai Ayawan'),
(140, 6, 31, 'KALTENG 4', 'SLNE', 'Sulin'),
(141, 6, 31, 'KALTENG 4', 'SNSE', 'Sungai Nusa'),
(142, 6, 32, 'KALTENG 4 PLASMA', 'SLNA', 'Sulin Pls'),
(143, 6, 32, 'KALTENG 4 PLASMA', 'SKOA', 'Sako Pls'),
(144, 6, 33, 'KALTENG 5', 'BDUE', 'Bukit Dua'),
(145, 6, 33, 'KALTENG 5', 'BSTE', 'Bukit Santuhai'),
(146, 6, 33, 'KALTENG 5', 'KUYE', 'Kuaya'),
(147, 6, 33, 'KALTENG 5', 'MNTE', 'Mentaya '),
(148, 6, 33, 'KALTENG 5', 'SPRE', 'Sapiri'),
(149, 6, 33, 'KALTENG 5', 'SRAE', 'Seranau'),
(150, 6, 33, 'KALTENG 5', 'TBSE', 'Tajur besar'),
(151, 6, 34, 'KALTENG 5 PLASMA', 'SPRA', 'Sapiri Pls'),
(152, 6, 34, 'KALTENG 5 PLASMA', 'SSBA', 'Sungai Sabon'),
(153, 6, 35, 'GUMAS', 'JLME', 'Jelemo'),
(154, 6, 35, 'GUMAS', 'KJUE', 'Kajui'),
(155, 6, 35, 'GUMAS', 'MNHE', 'Manuhing'),
(156, 6, 36, 'GUMAS PLASMA', 'MNHA', 'Manuhing Pls'),
(157, 7, 37, 'KETAPANG 1', 'KYNE', 'Kayun'),
(158, 7, 37, 'KETAPANG 1', 'NTYE', 'Nanga Tayap'),
(159, 7, 37, 'KETAPANG 1', 'PKWE', 'Pekawai'),
(160, 7, 37, 'KETAPANG 1', 'SKKE', 'Sungai Kelik'),
(161, 7, 38, 'KETAPANG 1 PLASMA', 'KYNA', 'Kayung Mitra'),
(162, 7, 39, 'KETAPANG 2', 'CDNE', 'Cendana Delima'),
(163, 7, 39, 'KETAPANG 2', 'DLME', 'Delima'),
(164, 7, 39, 'KETAPANG 2', 'GHRE', 'Gaharu'),
(165, 7, 39, 'KETAPANG 2', 'KNCE', 'Kencana'),
(166, 7, 39, 'KETAPANG 2', 'KNNE', 'Kenanga'),
(167, 7, 39, 'KETAPANG 2', 'KNRE', 'Kenari'),
(168, 7, 40, 'KETAPANG 2 PLASMA', 'GHRA', 'Gaharu Pls'),
(169, 7, 40, 'KETAPANG 2 PLASMA', 'KNCA', 'Kencana Pls'),
(170, 7, 40, 'KETAPANG 2 PLASMA', 'KNNA', 'Kenanga Pls'),
(171, 7, 40, 'KETAPANG 2 PLASMA', 'KNRA', 'Kenari Pls'),
(172, 7, 41, 'SEMITAU', 'BLNE', 'Belian'),
(173, 7, 41, 'SEMITAU', 'KHLE', 'Kapuas Hulu'),
(174, 7, 41, 'SEMITAU', 'MTNE', 'Muara Tawang'),
(175, 7, 41, 'SEMITAU', 'SBRE', 'Sungai Beran'),
(176, 7, 41, 'SEMITAU', 'TNKE', 'Tengkawang'),
(177, 7, 42, 'SEMITAU PLASMA', 'MTNA', 'Muara Tawang'),
(178, 7, 42, 'SEMITAU PLASMA', 'BLNA', 'Belian Pls'),
(179, 7, 42, 'SEMITAU PLASMA', 'KHLA', 'Kapuas Hulu Pls');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_listpic`
--

CREATE TABLE `tbl_listpic` (
  `id_pic` int(3) NOT NULL,
  `pic_name` varchar(50) NOT NULL,
  `id_pos` int(3) NOT NULL DEFAULT 0,
  `position_name` varchar(70) NOT NULL,
  `id_sect` int(3) NOT NULL,
  `sect_name` varchar(70) NOT NULL,
  `id_dept` int(3) NOT NULL,
  `dept_name` varchar(70) NOT NULL,
  `wa_staff` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_listpic`
--

INSERT INTO `tbl_listpic` (`id_pic`, `pic_name`, `id_pos`, `position_name`, `id_sect`, `sect_name`, `id_dept`, `dept_name`, `wa_staff`) VALUES
(1, 'Pujianto', 2, 'Department Head', 1, 'Agronomy', 1, 'Agronomy', '081268897334'),
(2, 'Doni Artanto R', 4, 'Research Assistant', 2, 'Agrophysiology', 1, 'Agronomy', '081265127307'),
(3, 'Fahri Arif Siregar', 3, 'Section Head', 2, 'Agrophysiology', 1, 'Agronomy', '081371602304'),
(4, 'Reni Subawati K', 4, 'Research Assistant', 2, 'Agrophysiology', 1, 'Agronomy', '081329298393'),
(5, 'Hasbullah', 3, 'Section Head', 3, 'Mineral Nutrition and Management', 1, 'Agronomy', '081999265941'),
(6, 'Maria Prasasti D', 4, 'Research Assistant', 3, 'Mineral Nutrition and Management', 1, 'Agronomy', '081378750770'),
(7, 'Sri Listyaningsih', 4, 'Research Assistant', 3, 'Mineral Nutrition and Management', 1, 'Agronomy', '081275499235'),
(8, 'Suhardi', 3, 'Section Head', 4, 'Soil Fertility', 1, 'Agronomy', '081322652911'),
(9, 'Eka Lupitasari', 4, 'Research Assistant', 4, 'Soil Fertility', 1, 'Agronomy', '081371067583'),
(10, 'Deni Reflianto Manik', 4, 'Research Assistant', 5, 'Libo Laboratory', 2, 'Analytical Laboratory', '085265917679'),
(11, 'Dias Kandias', 4, 'Research Assistant', 5, 'Libo Laboratory', 2, 'Analytical Laboratory', '081261295117'),
(12, 'Egyfaldi Biamenta', 4, 'Research Assistant', 5, 'Libo Laboratory', 2, 'Analytical Laboratory', '081361524034'),
(13, 'Fitriani', 4, 'Research Assistant', 5, 'Libo Laboratory', 2, 'Analytical Laboratory', '081378728949'),
(14, 'Tauvik Risman', 3, 'Section Head', 5, 'Libo Laboratory', 2, 'Analytical Laboratory', '08127649791'),
(15, 'Abednego L. Simamora', 4, 'Research Assistant', 6, 'RnD Laboratory', 2, 'Analytical Laboratory', '081221233728'),
(16, 'Anisa Putri', 4, 'Research Assistant', 6, 'RnD Laboratory', 2, 'Analytical Laboratory', '08118681802'),
(17, 'Sudarno', 3, 'Section Head', 6, 'RnD Laboratory', 2, 'Analytical Laboratory', '081274098078'),
(18, 'Fajar', 4, 'Research Assistant', 7, 'Sub Station Laboratory', 2, 'Analytical Laboratory', '081381809071'),
(19, 'Hermawani Girsang', 4, 'Research Assistant', 7, 'Sub Station Laboratory', 2, 'Analytical Laboratory', '085271186088'),
(20, 'Muhammad Fajriansyah', 4, 'Research Assistant', 7, 'Sub Station Laboratory', 2, 'Analytical Laboratory', '081251664123'),
(21, 'Syahrul Efendi S', 4, 'Research Assistant', 7, 'Sub Station Laboratory', 2, 'Analytical Laboratory', '081350460844'),
(22, 'Wiro Naibaho', 4, 'Research Assistant', 7, 'Sub Station Laboratory', 2, 'Analytical Laboratory', '085375818344'),
(23, 'Yudi Yustira', 4, 'Research Assistant', 7, 'Sub Station Laboratory', 2, 'Analytical Laboratory', '\'082252120907'),
(24, 'Mohd. Naim', 2, 'Department Head', 8, 'Crop Protection', 3, 'Crop Protection', '081277410930'),
(25, 'Syaiful Fahmi', 4, 'Research Assistant', 9, 'Pest and Entomology', 3, 'Crop Protection', '082178897331'),
(26, 'Yendra Pratama Setiawan', 3, 'Section Head', 9, 'Pest and Entomology', 3, 'Crop Protection', '082249255480'),
(27, 'Andreas Dwi Advento', 4, 'Research Assistant', 9, 'Pest and Entomology', 3, 'Crop Protection', '081380666194'),
(28, 'Achmad Wahyu S.', 3, 'Section Head', 10, 'Phytopathology section', 3, 'Crop Protection', '081365417208'),
(29, 'Giono', 4, 'Research Assistant', 10, 'Phytopathology section', 3, 'Crop Protection', '085277741720'),
(30, 'Rizky Rajabillah Purwoko', 4, 'Research Assistant', 10, 'Phytopathology section', 3, 'Crop Protection', '081374929610'),
(31, 'Tuani Dzulfikar S. R', 3, 'Section Head', 11, 'Weed Control', 3, 'Crop Protection', '081268899289'),
(32, 'Putri Aulia Wahyuningsih', 4, 'Research Assistant', 12, 'Big Data, AI, and Digitalization', 4, 'Data Intelligence and Analytics ', '085265776599'),
(33, 'Ashry Ramadhan', 4, 'Research Assistant', 12, 'Big Data, AI, and Digitalization', 4, 'Data Intelligence and Analytics ', '081276827683'),
(34, 'Andria Rezki', 4, 'Research Assistant', 13, 'Biometry and Database', 4, 'Data Intelligence and Analytics ', '081376434343'),
(35, 'Dwivayani Sentosa', 3, 'Section Head', 13, 'Biometry and Database', 4, 'Data Intelligence and Analytics ', '081382377454'),
(36, 'Rusmita', 4, 'Research Assistant', 13, 'Biometry and Database', 4, 'Data Intelligence and Analytics ', '082180901232'),
(37, 'Didi Adisaputro', 3, 'Section Head', 14, 'Climatology', 4, 'Data Intelligence and Analytics ', '0816412450'),
(38, 'Fendra D Ramadhan', 3, 'Section Head', 33, 'Geographical and Information System', 4, 'Data Intelligence and Analytics ', '08981960303'),
(39, 'Divo Dharma Silalahi', 2, 'Department Head', 15, 'Data Intelligence and Analytics', 4, 'Data Intelligence and Analytics ', '085211916330'),
(40, 'J.P. Caliman', 1, 'Division Head', 16, 'Division Head', 11, 'Division Head', '0811757638'),
(41, 'Fahry Faqiha', 5, 'Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082272251586'),
(42, 'Pramusita Yoga Daniswara', 5, 'Section Head', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082138128476'),
(43, 'Rudi Harto Widodo', 5, 'Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', ''),
(44, 'Hartono', 2, 'Department Head', 18, 'Field Operation and Extension Services', 5, 'Field Operation and Extension Services', '081367077601'),
(45, 'Aditya Fajar Kurniawan', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082199042639'),
(46, 'Agus Dwi Prasetyo', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '081271289574'),
(47, 'Aldi Putra Guntara', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '081286994927'),
(48, 'Alif Saifudin', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082169997154'),
(49, 'Ambri Bakhtiar', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '085228445009'),
(50, 'Anhar Jhony Murtono', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082323415636'),
(51, 'Chyntia Novanti', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '085219225991'),
(52, 'Edy Sulisianto', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '085279321619'),
(53, 'Elfrin Nisa Azmi', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082217661865'),
(54, 'Fadil Wirawan', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082363260008'),
(55, 'Fahron Nawawi', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '081338260441'),
(56, 'Imam Rifai', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '085211893245'),
(57, 'M Alpian', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '081349208226'),
(58, 'Sari\'a Maimuna', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '085267397807'),
(59, 'Widura Bintang Samudra', 8, 'Research Field Coordinator', 17, 'Sub Station FOESD', 5, 'Field Operation and Extension Services', '082337425123'),
(60, 'Hardianang Sapto Akbar', 3, 'Section Head', 20, 'Accounting and Administration', 6, 'General Affairs', '081249929383'),
(61, 'Rizki Anjal Puji Nugroho', 3, 'Section Head', 21, 'Breeding and Selection', 7, 'Plant Breeding', '081280035869'),
(62, 'Adin Afiyata', 4, 'Research Assistant', 22, 'Clonal Selection and Evaluation', 7, 'Plant Breeding', '081327320380'),
(63, 'Arnolly S. Ardi', 3, 'Section Head', 22, 'Clonal Selection and Evaluation', 7, 'Plant Breeding', '082283968121'),
(64, 'Zikril Illahi', 4, 'Research Assistant', 22, 'Clonal Selection and Evaluation', 7, 'Plant Breeding', '088261833133'),
(65, 'Sri Imriani Pulungan', 3, 'Section Head', 23, 'Molecular Assisted Breeding', 7, 'Plant Breeding', '082213810893'),
(66, 'Yong Yit Yuan', 2, 'Department Head', 24, 'Plant Breeding', 7, 'Plant Breeding', '08117571951'),
(67, 'Rita Marlina', 6, 'Quality Control ISO Certification', 25, 'Quality Control ISO Certification', 8, 'Quality Control', '085355352882'),
(68, 'Rus Eva Manurung', 7, 'Secretary', 26, 'Secretary', 9, 'Secretary', '0812763185'),
(69, 'Ikrar Nusantara Putra', 3, 'Section Head', 34, 'Life Cycle Analysis', 10, 'Sustainability Research', '085279685169'),
(70, 'Dedi Purnomo', 3, 'Section Head', 27, 'Biodiversity', 10, 'Sustainability Research', '085282841197'),
(71, 'Bayu Septiwibowo', 4, 'Research Assistant', 28, 'Carbon and Water Accounting', 10, 'Sustainability Research', '082170705550'),
(72, 'Anak Agung K. A', 3, 'Section Head', 29, 'Ecological Services', 10, 'Sustainability Research', '082284636300'),
(73, 'Jassica Prajna Dewi', 4, 'Research Assistant', 30, 'Pollution Risk Control', 10, 'Sustainability Research', '085213542353'),
(74, 'Ribka Sionita T', 3, 'Section Head', 30, 'Pollution Risk Control', 10, 'Sustainability Research', '082172465191'),
(75, 'Bram Hadiwijaya', 2, 'Department Head', 31, 'Sustainability Research', 10, 'Sustainability Research', '081268696928'),
(76, 'Medi Darminto', 10, 'Task Force', 32, 'Task Force', 11, 'Task Force', '081366804771');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_listregion`
--

CREATE TABLE `tbl_listregion` (
  `id` int(3) NOT NULL,
  `id_region` int(3) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_listregion`
--

INSERT INTO `tbl_listregion` (`id`, `id_region`, `region`) VALUES
(1, 1, 'SUMUT'),
(2, 2, 'JAMBI 1'),
(3, 3, 'JAMBI 1 PLASMA'),
(4, 4, 'JAMBI 2'),
(5, 5, 'JAMBI 2 PLASMA'),
(6, 6, 'BABEL'),
(7, 7, 'BABEL PLASMA'),
(8, 8, 'LAMPUNG'),
(9, 9, 'LAMPUNG PLASMA'),
(10, 10, 'PAPUA'),
(11, 11, 'SUMSEL 1'),
(12, 12, 'SUMSEL 1 PLASMA'),
(13, 13, 'SUMSEL 2'),
(14, 14, 'KALSEL 1'),
(15, 15, 'KALSEL 1 PLASMA'),
(16, 16, 'KALSEL 2'),
(17, 17, 'KALSEL 2 PLASMA'),
(18, 18, 'KALTIM 1'),
(19, 19, 'KALTIM 1 PLASMA'),
(20, 20, 'KALTIM 2 PLASMA'),
(21, 21, 'KALTIM 2'),
(22, 22, 'SIAK'),
(23, 23, 'KAMPAR INTI'),
(24, 24, 'KAMPAR PLASMA'),
(25, 25, 'INDRAGIRI INTI'),
(26, 26, 'INDRAGIRI'),
(27, 27, 'INDRAGIRI PLASMA'),
(28, 28, 'KALTENG 1'),
(29, 29, 'KALTENG 2'),
(30, 30, 'KALTENG 3'),
(31, 31, 'KALTENG 4'),
(32, 32, 'KALTENG 4 PLASMA'),
(33, 33, 'KALTENG 5'),
(34, 34, 'KALTENG 5 PLASMA'),
(35, 35, 'GUMAS'),
(36, 36, 'GUMAS PLASMA'),
(37, 37, 'KETAPANG 1'),
(38, 38, 'KETAPANG 1 PLASMA'),
(39, 39, 'KETAPANG 2'),
(40, 40, 'KETAPANG 2 PLASMA'),
(41, 41, 'SEMITAU'),
(42, 42, 'SEMITAU PLASMA'),
(43, 43, 'KUTAI BARAT 1'),
(44, 44, 'KUTAI BARAT 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_listsectionhead`
--

CREATE TABLE `tbl_listsectionhead` (
  `id` int(3) NOT NULL,
  `id_sect` int(3) NOT NULL,
  `sect_name` text NOT NULL,
  `name` text NOT NULL,
  `wa_secthead` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_listsectionhead`
--

INSERT INTO `tbl_listsectionhead` (`id`, `id_sect`, `sect_name`, `name`, `wa_secthead`) VALUES
(1, 1, 'Agronomy', 'Pujianto', '081268897334'),
(2, 2, 'Agrophysiology', 'Fahri Arif Siregar', '081371602304'),
(3, 3, 'Mineral Nutrition and Management', 'Hasbullah', '081999265941'),
(4, 4, 'Soil Fertility', 'Suhardi', '081322652911'),
(5, 5, 'Libo Laboratory', 'Tauvik Risman', '08127649791'),
(6, 6, 'RnD Laboratory', 'Sudarno', '081274098078'),
(9, 9, 'Pest and Entomology', 'Yendra Pratama Setiawan', '082249255480'),
(10, 10, 'Phytopathology section', 'Achmad Wahyu S.', '081365417208'),
(11, 11, 'Weed Control', 'Tuani Dzulfikar S. R', '081268899289'),
(13, 13, 'Biometry and Database', 'Dwivayani Sentosa', '081382377454'),
(14, 14, 'Climatology', 'Didi Adisaputro', '0816412450'),
(20, 20, 'Accounting and Administration', 'Hardianang Sapto Akbar', '081249929383'),
(21, 21, 'Breeding and Selection', 'Rizki Anjal Puji Nugroho', '081280035869'),
(22, 22, 'Clonal Selection and Evaluation', 'Arnolly S. Ardi', '082283968121'),
(23, 23, 'Molecular Assisted Breeding', 'Sri Imriani Pulungan', '082213810893'),
(27, 27, 'Biodiversity', 'Dedi Purnomo', '085282841197'),
(29, 29, 'Ecological Services', 'Anak Agung K. A', '082284636300'),
(30, 30, 'Pollution Risk Control', 'Ribka Sionita T', '082172465191'),
(33, 33, 'Geographical and Information System', 'Fendra D Ramadhan', '08981960303'),
(34, 34, 'Life Cycle Analysis', 'Ikrar Nusantara Putra', '085279685169'),
(111, 111, 'AAA - Tes', 'AAA - Nama', '082246793537');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_liststaff`
--

CREATE TABLE `tbl_liststaff` (
  `id_staff` int(3) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `sect_name` varchar(70) NOT NULL,
  `dept_name` varchar(70) NOT NULL,
  `wa_staff` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_liststaff`
--

INSERT INTO `tbl_liststaff` (`id_staff`, `staff_name`, `sect_name`, `dept_name`, `wa_staff`) VALUES
(1, 'Pujianto', 'Agronomy', 'Agronomy', '081268897334'),
(2, 'Doni Artanto R', 'Agrophysiology', 'Agronomy', '081265127307'),
(3, 'Fahri Arif Siregar', 'Agrophysiology', 'Agronomy', '081371602304'),
(4, 'Reni Subawati K', 'Agrophysiology', 'Agronomy', '081329298393'),
(5, 'Hasbullah', 'Mineral Nutrition and Management', 'Agronomy', '081999265941'),
(6, 'Maria Prasasti D', 'Mineral Nutrition and Management', 'Agronomy', '081378750770'),
(7, 'Sri Listyaningsih', 'Mineral Nutrition and Management', 'Agronomy', '081275499235'),
(8, 'Suhardi', 'Soil Fertility', 'Agronomy', '081322652911'),
(9, 'Eka Lupitasari', 'Soil Fertility', 'Agronomy', '081371067583'),
(10, 'Deni Reflianto Manik', 'Libo Laboratory', 'Analytical Laboratory', '085265917679'),
(11, 'Dias Kandias', 'Libo Laboratory', 'Analytical Laboratory', '081261295117'),
(12, 'Egyfaldi Biamenta', 'Libo Laboratory', 'Analytical Laboratory', '081361524034'),
(13, 'Fitriani', 'Libo Laboratory', 'Analytical Laboratory', '081378728949'),
(14, 'Tauvik Risman', 'Libo Laboratory', 'Analytical Laboratory', '08127649791'),
(15, 'Abednego L. Simamora', 'RnD Laboratory', 'Analytical Laboratory', '081221233728'),
(16, 'Anisa Putri', 'RnD Laboratory', 'Analytical Laboratory', '08118681802'),
(17, 'Sudarno', 'RnD Laboratory', 'Analytical Laboratory', '081274098078'),
(18, 'Fajar', 'Sub Station Laboratory', 'Analytical Laboratory', '081381809071'),
(19, 'Hermawani Girsang', 'Sub Station Laboratory', 'Analytical Laboratory', '085271186088'),
(20, 'Muhammad Fajriansyah', 'Sub Station Laboratory', 'Analytical Laboratory', '081251664123'),
(21, 'Syahrul Efendi S', 'Sub Station Laboratory', 'Analytical Laboratory', '081350460844'),
(22, 'Wiro Naibaho', 'Sub Station Laboratory', 'Analytical Laboratory', '085375818344'),
(23, 'Yudi Yustira', 'Sub Station Laboratory', 'Analytical Laboratory', '\'082252120907'),
(24, 'Mohd. Naim', 'Crop Protection', 'Crop Protection', '081277410930'),
(25, 'Andreas Dwi Advento', 'Pest and Entomology', 'Crop Protection', '081380666194'),
(26, 'Yendra Pratama Setiawan', 'Pest and Entomology', 'Crop Protection', '082249255480'),
(27, 'Syaiful Fahmi', 'Pest and Entomology', 'Crop Protection', '082178897331'),
(28, 'Achmad Wahyu S.', 'Phytopathology section', 'Crop Protection', '081365417208'),
(29, 'Giono', 'Phytopathology section', 'Crop Protection', '085277741720'),
(30, 'Rizky Rajabillah Purwoko', 'Phytopathology section', 'Crop Protection', '081374929610'),
(31, 'Tuani Dzulfikar S. R', 'Weed Control', 'Crop Protection', '081268899289'),
(32, 'Putri Aulia Wahyuningsih', 'Big Data, AI, and Digitalization', 'Data Intelligence and Analytics ', '085265776599'),
(33, 'Ashry Ramadhan', 'Big Data, AI, and Digitalization', 'Data Intelligence and Analytics ', '081276827683'),
(34, 'Andria Rezki', 'Biometry and Database', 'Data Intelligence and Analytics ', '081376434343'),
(35, 'Dwivayani Sentosa', 'Biometry and Database', 'Data Intelligence and Analytics ', '081382377454'),
(36, 'Rusmita', 'Biometry and Database', 'Data Intelligence and Analytics ', '082180901232'),
(37, 'Didi Adisaputro', 'Climatology', 'Data Intelligence and Analytics ', '0816412450'),
(38, 'Fendra D Ramadhan', 'Geographical and Information System', 'Data Intelligence and Analytics ', '08981960303'),
(39, 'Divo Dharma Silalahi', 'Data Intelligence and Analytics', 'Data Intelligence and Analytics ', '085211916330'),
(40, 'J.P. Caliman', 'Division Head', 'Division Head', '0811757638'),
(41, 'Fahry Faqiha', 'Sub Station FOESD', 'Field Operation and Extension Services', '082272251586'),
(42, 'Pramusita Yoga Daniswara', 'Main Station FOESD', 'Field Operation and Extension Services', '082138128476'),
(43, 'Rudi Harto Widodo', 'Sub Station FOESD', 'Field Operation and Extension Services', ''),
(44, 'Hartono', 'Field Operation and Extension Services', 'Field Operation and Extension Services', '081367077601'),
(45, 'Aditya Fajar Kurniawan', 'Sub Station FOESD', 'Field Operation and Extension Services', '082199042639'),
(46, 'Agus Dwi Prasetyo', 'Sub Station FOESD', 'Field Operation and Extension Services', '081271289574'),
(47, 'Aldi Putra Guntara', 'Sub Station FOESD', 'Field Operation and Extension Services', '081286994927'),
(48, 'Alif Saifudin', 'Sub Station FOESD', 'Field Operation and Extension Services', '082169997154'),
(49, 'Ambri Bakhtiar', 'Sub Station FOESD', 'Field Operation and Extension Services', '085228445009'),
(50, 'Anhar Jhony Murtono', 'Sub Station FOESD', 'Field Operation and Extension Services', '082323415636'),
(51, 'Chyntia Novanti', 'Sub Station FOESD', 'Field Operation and Extension Services', '085219225991'),
(52, 'Edy Sulisianto', 'Sub Station FOESD', 'Field Operation and Extension Services', '085279321619'),
(53, 'Elfrin Nisa Azmi', 'Sub Station FOESD', 'Field Operation and Extension Services', '082217661865'),
(54, 'Fadil Wirawan', 'Sub Station FOESD', 'Field Operation and Extension Services', '082363260008'),
(55, 'Fahron Nawawi', 'Sub Station FOESD', 'Field Operation and Extension Services', '081338260441'),
(56, 'Imam Rifai', 'Sub Station FOESD', 'Field Operation and Extension Services', '085211893245'),
(57, 'M Alpian', 'Sub Station FOESD', 'Field Operation and Extension Services', '081349208226'),
(58, 'Sari\'a Maimuna', 'Sub Station FOESD', 'Field Operation and Extension Services', '085267397807'),
(59, 'Widura Bintang Samudra', 'Sub Station FOESD', 'Field Operation and Extension Services', '082337425123'),
(60, 'Hardianang Sapto Akbar', 'Accounting and Administration', 'General Affairs', '081249929383'),
(61, 'Rizki Anjal Puji Nugroho', 'Breeding and Selection', 'Plant Breeding', '081280035869'),
(62, 'Adin Afiyata', 'Clonal Selection and Evaluation', 'Plant Breeding', '081327320380'),
(63, 'Arnolly S. Ardi', 'Clonal Selection and Evaluation', 'Plant Breeding', '082283968121'),
(64, 'Zikril Illahi', 'Clonal Selection and Evaluation', 'Plant Breeding', '088261833133'),
(65, 'Sri Imriani Pulungan', 'Molecular Assisted Breeding', 'Plant Breeding', '082213810893'),
(66, 'Yong Yit Yuan', 'Plant Breeding', 'Plant Breeding', '08117571951'),
(67, 'Rita Marlina', 'Quality Control ISO Certification', 'Quality Control', '085355352882'),
(68, 'Rus Eva Manurung', 'Secretary', 'Secretary', '0812763185'),
(69, 'Ikrar Nusantara Putra', 'Life Cycle Analysis', 'Sustainability Research', '085279685169'),
(70, 'Dedi Purnomo', 'Biodiversity', 'Sustainability Research', '085282841197'),
(71, 'Bayu Septiwibowo', 'Carbon and Water Accounting', 'Sustainability Research', '082170705550'),
(72, 'Anak Agung K. A', 'Ecological Services', 'Sustainability Research', '082284636300'),
(73, 'Jassica Prajna Dewi', 'Pollution Risk Control', 'Sustainability Research', '085213542353'),
(74, 'Ribka Sionita T', 'Pollution Risk Control', 'Sustainability Research', '082172465191'),
(75, 'Bram Hadiwijaya', 'Sustainability Research', 'Sustainability Research', '081268696928'),
(76, 'Medi Darminto', 'Task Force', 'Task Force', '081366804771');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `full_name`, `password`, `id_level`, `image`, `is_active`) VALUES
(1, 'admin', 'Administrator', '$2y$05$74rR8MotFPqMTg.EXVqo7OKrKemYliEArov49Q2u4QS0LE90uopt.', 1, 'admin1.jpg', 'Y'),
(6, 'user', 'user', '$2y$05$0gvX6ELuEZmeu1KjPhvCGONu3GofYmZ/xa/42a9sYTcc5OlMHWy42', 4, 'user.jpg', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fiadmin`
--
ALTER TABLE `tbl_fiadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_listdept`
--
ALTER TABLE `tbl_listdept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_listkebun`
--
ALTER TABLE `tbl_listkebun`
  ADD PRIMARY KEY (`id_kebun`);

--
-- Indexes for table `tbl_listpic`
--
ALTER TABLE `tbl_listpic`
  ADD PRIMARY KEY (`id_pic`);

--
-- Indexes for table `tbl_listregion`
--
ALTER TABLE `tbl_listregion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_listsectionhead`
--
ALTER TABLE `tbl_listsectionhead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_liststaff`
--
ALTER TABLE `tbl_liststaff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_fiadmin`
--
ALTER TABLE `tbl_fiadmin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_listdept`
--
ALTER TABLE `tbl_listdept`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_listkebun`
--
ALTER TABLE `tbl_listkebun`
  MODIFY `id_kebun` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `tbl_listpic`
--
ALTER TABLE `tbl_listpic`
  MODIFY `id_pic` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `tbl_listregion`
--
ALTER TABLE `tbl_listregion`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_listsectionhead`
--
ALTER TABLE `tbl_listsectionhead`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tbl_liststaff`
--
ALTER TABLE `tbl_liststaff`
  MODIFY `id_staff` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
